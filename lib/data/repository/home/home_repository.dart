import 'package:countries/data/provider/api_client.dart';
import 'package:flutter/cupertino.dart';

class HomeRepository {
  ApiClient apiClient;
  HomeRepository({required this.apiClient});

  Future<dynamic> getAll() async {
    try {
      final response = await apiClient.getDatas();
      return response;
    } catch (e) {
      debugPrint("ERROR: $e");
    }
  }
}
