import 'package:countries/core/constants/constants.dart';
import 'package:countries/data/moduls/all/data_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class ApiClient {
  static getDio() {
    Dio dio = Dio(BaseOptions(followRedirects: false));
    return dio;
  }

  static ApiClient? _apiClient;

  static ApiClient getInstance({String baseUrl = Constants.baseUrl}) {
    if (_apiClient != null) {
      return _apiClient!;
    } else {
      _apiClient = ApiClient(getDio(), baseUrl);
      return _apiClient!;
    }
  }

  factory ApiClient(Dio dio, String baseUrl) {
    dio.options = BaseOptions(receiveTimeout: 30000, connectTimeout: 30000);

    return _ApiClient(dio, baseUrl: baseUrl);
  }

  @GET("/all")
  Future<List<DatasResponse>> getDatas();
}
