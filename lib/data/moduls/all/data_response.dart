class DatasResponse {
  DatasResponse({
    this.name,
    this.tld,
    this.cca2,
    this.ccn3,
    this.cca3,
    this.cioc,
    this.independent,
    this.status,
    this.unMember,
    this.currencies,
    this.idd,
    this.capital,
    this.altSpellings,
    this.region,
    this.subregion,
    this.languages,
    this.translations,
    this.latlng,
    this.landlocked,
    this.borders,
    this.area,
    this.demonyms,
    this.flag,
    this.maps,
    this.population,
    this.fifa,
    this.car,
    this.timezones,
    this.continents,
    this.flags,
    this.coatOfArms,
    this.startOfWeek,
    this.capitalInfo,
    this.gini,
    this.postalCode,
  });

  Name? name;
  List<String>? tld;
  String? cca2;
  String? ccn3;
  String? cca3;
  String? cioc;
  bool? independent;
  String? status;
  bool? unMember;
  Currencies? currencies;
  Idd? idd;
  List<String>? capital;
  List<String>? altSpellings;
  String? region;
  String? subregion;
  Map<String, String>? languages;
  Map<String, Translation>? translations;
  List<double>? latlng;
  bool? landlocked;
  List<String>? borders;
  double? area;
  Demonyms? demonyms;
  String? flag;
  Maps? maps;
  int? population;
  String? fifa;
  Car? car;
  List<String>? timezones;
  List<String>? continents;
  CoatOfArms? flags;
  CoatOfArms? coatOfArms;
  String? startOfWeek;
  CapitalInfo? capitalInfo;
  Map<String, double>? gini;
  PostalCode? postalCode;

  factory DatasResponse.fromJson(Map<String, dynamic> json) => DatasResponse(
        name: Name.fromJson(json["name"]),
        tld: json["tld"] == null
            ? null
            : List<String>.from(json["tld"].map((x) => x)),
        cca2: json["cca2"],
        ccn3: json["ccn3"] == null ? null : json["ccn3"],
        cca3: json["cca3"],
        cioc: json["cioc"] == null ? null : json["cioc"],
        independent: json["independent"] == null ? null : json["independent"],
        status: json["status"],
        unMember: json["unMember"],
        currencies: json["currencies"] == null
            ? null
            : Currencies.fromJson(json["currencies"]),
        idd: Idd.fromJson(json["idd"]),
        capital: json["capital"] == null
            ? null
            : List<String>.from(json["capital"].map((x) => x)),
        altSpellings: List<String>.from(json["altSpellings"].map((x) => x)),
        region: json["region"],
        subregion: json["subregion"] == null ? null : json["subregion"],
        languages: json["languages"] == null
            ? null
            : Map.from(json["languages"])
                .map((k, v) => MapEntry<String, String>(k, v)),
        translations: Map.from(json["translations"]).map((k, v) =>
            MapEntry<String, Translation>(k, Translation.fromJson(v))),
        latlng: List<double>.from(json["latlng"].map((x) => x.toDouble())),
        landlocked: json["landlocked"],
        borders: json["borders"] == null
            ? null
            : List<String>.from(json["borders"].map((x) => x)),
        area: json["area"].toDouble(),
        demonyms: json["demonyms"] == null
            ? null
            : Demonyms.fromJson(json["demonyms"]),
        flag: json["flag"] == null ? null : json["flag"],
        maps: Maps.fromJson(json["maps"]),
        population: json["population"],
        fifa: json["fifa"] == null ? null : json["fifa"],
        car: Car.fromJson(json["car"]),
        timezones: List<String>.from(json["timezones"].map((x) => x)),
        continents: List<String>.from(json["continents"].map((x) => x)),
        flags: CoatOfArms.fromJson(json["flags"]),
        coatOfArms: CoatOfArms.fromJson(json["coatOfArms"]),
        startOfWeek: json["startOfWeek"],
        capitalInfo: CapitalInfo.fromJson(json["capitalInfo"]),
        gini: json["gini"] == null
            ? null
            : Map.from(json["gini"])
                .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        postalCode: json["postalCode"] == null
            ? null
            : PostalCode.fromJson(json["postalCode"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name!.toJson(),
        "tld": tld == null ? null : List<dynamic>.from(tld!.map((x) => x)),
        "cca2": cca2,
        "ccn3": ccn3 == null ? null : ccn3,
        "cca3": cca3,
        "cioc": cioc == null ? null : cioc,
        "independent": independent == null ? null : independent,
        "status": status,
        "unMember": unMember,
        "currencies": currencies == null ? null : currencies!.toJson(),
        "idd": idd!.toJson(),
        "capital":
            capital == null ? null : List<dynamic>.from(capital!.map((x) => x)),
        "altSpellings": List<dynamic>.from(altSpellings!.map((x) => x)),
        "region": region,
        "subregion": subregion == null ? null : subregion,
        "languages": languages == null
            ? null
            : Map.from(languages!)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "translations": Map.from(translations!)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "latlng": List<dynamic>.from(latlng!.map((x) => x)),
        "landlocked": landlocked,
        "borders":
            borders == null ? null : List<dynamic>.from(borders!.map((x) => x)),
        "area": area,
        "demonyms": demonyms == null ? null : demonyms!.toJson(),
        "flag": flag == null ? null : flag,
        "maps": maps!.toJson(),
        "population": population,
        "fifa": fifa == null ? null : fifa,
        "car": car!.toJson(),
        "timezones": List<dynamic>.from(timezones!.map((x) => x)),
        "continents": List<dynamic>.from(continents!.map((x) => x)),
        "flags": flags!.toJson(),
        "coatOfArms": coatOfArms!.toJson(),
        "startOfWeek": startOfWeek,
        "capitalInfo": capitalInfo!.toJson(),
        "gini": gini == null
            ? null
            : Map.from(gini!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "postalCode": postalCode == null ? null : postalCode!.toJson(),
      };
}

class CapitalInfo {
  CapitalInfo({
    this.latlng,
  });

  List<double>? latlng;

  factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
        latlng: json["latlng"] == null
            ? null
            : List<double>.from(json["latlng"].map((x) => x.toDouble())),
      );

  Map<String, dynamic> toJson() => {
        "latlng":
            latlng == null ? null : List<dynamic>.from(latlng!.map((x) => x)),
      };
}

class Car {
  Car({
    this.signs,
    this.side,
  });

  List<String>? signs;
  String? side;

  factory Car.fromJson(Map<String, dynamic> json) => Car(
        signs: json["signs"] == null
            ? null
            : List<String>.from(json["signs"].map((x) => x)),
        side: json["side"],
      );

  Map<String, dynamic> toJson() => {
        "signs":
            signs == null ? null : List<dynamic>.from(signs!.map((x) => x)),
        "side": side,
      };
}

class CoatOfArms {
  CoatOfArms({
    this.png,
    this.svg,
  });

  String? png;
  String? svg;

  factory CoatOfArms.fromJson(Map<String, dynamic> json) => CoatOfArms(
        png: json["png"] == null ? null : json["png"],
        svg: json["svg"] == null ? null : json["svg"],
      );

  Map<String, dynamic> toJson() => {
        "png": png == null ? null : png,
        "svg": svg == null ? null : svg,
      };
}

class Currencies {
  Currencies({
    this.afn,
    this.sdg,
    this.bif,
    this.mxn,
    this.cuc,
    this.cup,
    this.rsd,
    this.eur,
    this.btn,
    this.inr,
    this.gyd,
    this.shp,
    this.bam,
    this.bnd,
    this.sgd,
    this.pkr,
    this.kes,
    this.usd,
    this.sos,
    this.nok,
    this.sll,
    this.xpf,
    this.azn,
    this.ckd,
    this.nzd,
    this.pen,
    this.aoa,
    this.xaf,
    this.ssp,
    this.currenciesTry,
    this.xcd,
    this.awg,
    this.twd,
    this.sek,
    this.lrd,
    this.ves,
    this.bmd,
    this.all,
    this.hkd,
    this.ern,
    this.cop,
    this.mnt,
    this.yer,
    this.lbp,
    this.vnd,
    this.gbp,
    this.jep,
    this.ttd,
    this.ils,
    this.bgn,
    this.gip,
    this.ang,
    this.sar,
    this.ghs,
    this.mdl,
    this.pgk,
    this.bzd,
    this.kmf,
    this.xof,
    this.dkk,
    this.fok,
    this.gnf,
    this.tnd,
    this.idr,
    this.tjs,
    this.cdf,
    this.ron,
    this.qar,
    this.cny,
    this.aud,
    this.mru,
    this.uzs,
    this.isk,
    this.omr,
    this.mkd,
    this.chf,
    this.pyg,
    this.bhd,
    this.jpy,
    this.iqd,
    this.imp,
    this.mmk,
    this.vuv,
    this.zwl,
    this.php,
    this.szl,
    this.zar,
    this.rwf,
    this.ugx,
    this.irr,
    this.uyu,
    this.srd,
    this.uah,
    this.czk,
    this.hnl,
    this.wst,
    this.lak,
    this.cve,
    this.etb,
    this.bdt,
    this.byn,
    this.hrk,
    this.kwd,
    this.mad,
    this.rub,
    this.lkr,
    this.pln,
    this.mga,
    this.crc,
    this.mop,
    this.nad,
    this.scr,
    this.pab,
    this.htg,
    this.ars,
    this.mwk,
    this.kid,
    this.syp,
    this.huf,
    this.kyd,
    this.bob,
    this.djf,
    this.ngn,
    this.stn,
    this.nio,
    this.bsd,
    this.clp,
    this.myr,
    this.tvd,
    this.sbd,
    this.tzs,
    this.kpw,
    this.egp,
    this.jod,
    this.jmd,
    this.khr,
    this.mur,
    this.gmd,
    this.lsl,
    this.dzd,
    this.aed,
    this.mzn,
    this.zmw,
    this.gtq,
    this.krw,
    this.kgs,
    this.fkp,
    this.kzt,
    this.bwp,
    this.bbd,
    this.top,
    this.thb,
    this.cad,
    this.gel,
    this.fjd,
    this.amd,
    this.dop,
    this.ggp,
    this.tmt,
    this.npr,
    this.mvr,
    this.lyd,
    this.brl,
  });

  Aed? afn;
  Bam? sdg;
  Aed? bif;
  Aed? mxn;
  Aed? cuc;
  Aed? cup;
  Aed? rsd;
  Aed? eur;
  Aed? btn;
  Aed? inr;
  Aed? gyd;
  Aed? shp;
  Bam? bam;
  Aed? bnd;
  Aed? sgd;
  Aed? pkr;
  Aed? kes;
  Aed? usd;
  Aed? sos;
  Aed? nok;
  Aed? sll;
  Aed? xpf;
  Aed? azn;
  Aed? ckd;
  Aed? nzd;
  Aed? pen;
  Aed? aoa;
  Aed? xaf;
  Aed? ssp;
  Aed? currenciesTry;
  Aed? xcd;
  Aed? awg;
  Aed? twd;
  Aed? sek;
  Aed? lrd;
  Aed? ves;
  Aed? bmd;
  Aed? all;
  Aed? hkd;
  Aed? ern;
  Aed? cop;
  Aed? mnt;
  Aed? yer;
  Aed? lbp;
  Aed? vnd;
  Aed? gbp;
  Aed? jep;
  Aed? ttd;
  Aed? ils;
  Aed? bgn;
  Aed? gip;
  Aed? ang;
  Aed? sar;
  Aed? ghs;
  Aed? mdl;
  Aed? pgk;
  Aed? bzd;
  Aed? kmf;
  Aed? xof;
  Aed? dkk;
  Aed? fok;
  Aed? gnf;
  Aed? tnd;
  Aed? idr;
  Aed? tjs;
  Aed? cdf;
  Aed? ron;
  Aed? qar;
  Aed? cny;
  Aed? aud;
  Aed? mru;
  Aed? uzs;
  Aed? isk;
  Aed? omr;
  Aed? mkd;
  Aed? chf;
  Aed? pyg;
  Aed? bhd;
  Aed? jpy;
  Aed? iqd;
  Aed? imp;
  Aed? mmk;
  Aed? vuv;
  Aed? zwl;
  Aed? php;
  Aed? szl;
  Aed? zar;
  Aed? rwf;
  Aed? ugx;
  Aed? irr;
  Aed? uyu;
  Aed? srd;
  Aed? uah;
  Aed? czk;
  Aed? hnl;
  Aed? wst;
  Aed? lak;
  Aed? cve;
  Aed? etb;
  Aed? bdt;
  Aed? byn;
  Aed? hrk;
  Aed? kwd;
  Aed? mad;
  Aed? rub;
  Aed? lkr;
  Aed? pln;
  Aed? mga;
  Aed? crc;
  Aed? mop;
  Aed? nad;
  Aed? scr;
  Aed? pab;
  Aed? htg;
  Aed? ars;
  Aed? mwk;
  Aed? kid;
  Aed? syp;
  Aed? huf;
  Aed? kyd;
  Aed? bob;
  Aed? djf;
  Aed? ngn;
  Aed? stn;
  Aed? nio;
  Aed? bsd;
  Aed? clp;
  Aed? myr;
  Aed? tvd;
  Aed? sbd;
  Aed? tzs;
  Aed? kpw;
  Aed? egp;
  Aed? jod;
  Aed? jmd;
  Aed? khr;
  Aed? mur;
  Aed? gmd;
  Aed? lsl;
  Aed? dzd;
  Aed? aed;
  Aed? mzn;
  Aed? zmw;
  Aed? gtq;
  Aed? krw;
  Aed? kgs;
  Aed? fkp;
  Aed? kzt;
  Aed? bwp;
  Aed? bbd;
  Aed? top;
  Aed? thb;
  Aed? cad;
  Aed? gel;
  Aed? fjd;
  Aed? amd;
  Aed? dop;
  Aed? ggp;
  Aed? tmt;
  Aed? npr;
  Aed? mvr;
  Aed? lyd;
  Aed? brl;

  factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
        afn: json["AFN"] == null ? null : Aed.fromJson(json["AFN"]),
        sdg: json["SDG"] == null ? null : Bam.fromJson(json["SDG"]),
        bif: json["BIF"] == null ? null : Aed.fromJson(json["BIF"]),
        mxn: json["MXN"] == null ? null : Aed.fromJson(json["MXN"]),
        cuc: json["CUC"] == null ? null : Aed.fromJson(json["CUC"]),
        cup: json["CUP"] == null ? null : Aed.fromJson(json["CUP"]),
        rsd: json["RSD"] == null ? null : Aed.fromJson(json["RSD"]),
        eur: json["EUR"] == null ? null : Aed.fromJson(json["EUR"]),
        btn: json["BTN"] == null ? null : Aed.fromJson(json["BTN"]),
        inr: json["INR"] == null ? null : Aed.fromJson(json["INR"]),
        gyd: json["GYD"] == null ? null : Aed.fromJson(json["GYD"]),
        shp: json["SHP"] == null ? null : Aed.fromJson(json["SHP"]),
        bam: json["BAM"] == null ? null : Bam.fromJson(json["BAM"]),
        bnd: json["BND"] == null ? null : Aed.fromJson(json["BND"]),
        sgd: json["SGD"] == null ? null : Aed.fromJson(json["SGD"]),
        pkr: json["PKR"] == null ? null : Aed.fromJson(json["PKR"]),
        kes: json["KES"] == null ? null : Aed.fromJson(json["KES"]),
        usd: json["USD"] == null ? null : Aed.fromJson(json["USD"]),
        sos: json["SOS"] == null ? null : Aed.fromJson(json["SOS"]),
        nok: json["NOK"] == null ? null : Aed.fromJson(json["NOK"]),
        sll: json["SLL"] == null ? null : Aed.fromJson(json["SLL"]),
        xpf: json["XPF"] == null ? null : Aed.fromJson(json["XPF"]),
        azn: json["AZN"] == null ? null : Aed.fromJson(json["AZN"]),
        ckd: json["CKD"] == null ? null : Aed.fromJson(json["CKD"]),
        nzd: json["NZD"] == null ? null : Aed.fromJson(json["NZD"]),
        pen: json["PEN"] == null ? null : Aed.fromJson(json["PEN"]),
        aoa: json["AOA"] == null ? null : Aed.fromJson(json["AOA"]),
        xaf: json["XAF"] == null ? null : Aed.fromJson(json["XAF"]),
        ssp: json["SSP"] == null ? null : Aed.fromJson(json["SSP"]),
        currenciesTry: json["TRY"] == null ? null : Aed.fromJson(json["TRY"]),
        xcd: json["XCD"] == null ? null : Aed.fromJson(json["XCD"]),
        awg: json["AWG"] == null ? null : Aed.fromJson(json["AWG"]),
        twd: json["TWD"] == null ? null : Aed.fromJson(json["TWD"]),
        sek: json["SEK"] == null ? null : Aed.fromJson(json["SEK"]),
        lrd: json["LRD"] == null ? null : Aed.fromJson(json["LRD"]),
        ves: json["VES"] == null ? null : Aed.fromJson(json["VES"]),
        bmd: json["BMD"] == null ? null : Aed.fromJson(json["BMD"]),
        all: json["ALL"] == null ? null : Aed.fromJson(json["ALL"]),
        hkd: json["HKD"] == null ? null : Aed.fromJson(json["HKD"]),
        ern: json["ERN"] == null ? null : Aed.fromJson(json["ERN"]),
        cop: json["COP"] == null ? null : Aed.fromJson(json["COP"]),
        mnt: json["MNT"] == null ? null : Aed.fromJson(json["MNT"]),
        yer: json["YER"] == null ? null : Aed.fromJson(json["YER"]),
        lbp: json["LBP"] == null ? null : Aed.fromJson(json["LBP"]),
        vnd: json["VND"] == null ? null : Aed.fromJson(json["VND"]),
        gbp: json["GBP"] == null ? null : Aed.fromJson(json["GBP"]),
        jep: json["JEP"] == null ? null : Aed.fromJson(json["JEP"]),
        ttd: json["TTD"] == null ? null : Aed.fromJson(json["TTD"]),
        ils: json["ILS"] == null ? null : Aed.fromJson(json["ILS"]),
        bgn: json["BGN"] == null ? null : Aed.fromJson(json["BGN"]),
        gip: json["GIP"] == null ? null : Aed.fromJson(json["GIP"]),
        ang: json["ANG"] == null ? null : Aed.fromJson(json["ANG"]),
        sar: json["SAR"] == null ? null : Aed.fromJson(json["SAR"]),
        ghs: json["GHS"] == null ? null : Aed.fromJson(json["GHS"]),
        mdl: json["MDL"] == null ? null : Aed.fromJson(json["MDL"]),
        pgk: json["PGK"] == null ? null : Aed.fromJson(json["PGK"]),
        bzd: json["BZD"] == null ? null : Aed.fromJson(json["BZD"]),
        kmf: json["KMF"] == null ? null : Aed.fromJson(json["KMF"]),
        xof: json["XOF"] == null ? null : Aed.fromJson(json["XOF"]),
        dkk: json["DKK"] == null ? null : Aed.fromJson(json["DKK"]),
        fok: json["FOK"] == null ? null : Aed.fromJson(json["FOK"]),
        gnf: json["GNF"] == null ? null : Aed.fromJson(json["GNF"]),
        tnd: json["TND"] == null ? null : Aed.fromJson(json["TND"]),
        idr: json["IDR"] == null ? null : Aed.fromJson(json["IDR"]),
        tjs: json["TJS"] == null ? null : Aed.fromJson(json["TJS"]),
        cdf: json["CDF"] == null ? null : Aed.fromJson(json["CDF"]),
        ron: json["RON"] == null ? null : Aed.fromJson(json["RON"]),
        qar: json["QAR"] == null ? null : Aed.fromJson(json["QAR"]),
        cny: json["CNY"] == null ? null : Aed.fromJson(json["CNY"]),
        aud: json["AUD"] == null ? null : Aed.fromJson(json["AUD"]),
        mru: json["MRU"] == null ? null : Aed.fromJson(json["MRU"]),
        uzs: json["UZS"] == null ? null : Aed.fromJson(json["UZS"]),
        isk: json["ISK"] == null ? null : Aed.fromJson(json["ISK"]),
        omr: json["OMR"] == null ? null : Aed.fromJson(json["OMR"]),
        mkd: json["MKD"] == null ? null : Aed.fromJson(json["MKD"]),
        chf: json["CHF"] == null ? null : Aed.fromJson(json["CHF"]),
        pyg: json["PYG"] == null ? null : Aed.fromJson(json["PYG"]),
        bhd: json["BHD"] == null ? null : Aed.fromJson(json["BHD"]),
        jpy: json["JPY"] == null ? null : Aed.fromJson(json["JPY"]),
        iqd: json["IQD"] == null ? null : Aed.fromJson(json["IQD"]),
        imp: json["IMP"] == null ? null : Aed.fromJson(json["IMP"]),
        mmk: json["MMK"] == null ? null : Aed.fromJson(json["MMK"]),
        vuv: json["VUV"] == null ? null : Aed.fromJson(json["VUV"]),
        zwl: json["ZWL"] == null ? null : Aed.fromJson(json["ZWL"]),
        php: json["PHP"] == null ? null : Aed.fromJson(json["PHP"]),
        szl: json["SZL"] == null ? null : Aed.fromJson(json["SZL"]),
        zar: json["ZAR"] == null ? null : Aed.fromJson(json["ZAR"]),
        rwf: json["RWF"] == null ? null : Aed.fromJson(json["RWF"]),
        ugx: json["UGX"] == null ? null : Aed.fromJson(json["UGX"]),
        irr: json["IRR"] == null ? null : Aed.fromJson(json["IRR"]),
        uyu: json["UYU"] == null ? null : Aed.fromJson(json["UYU"]),
        srd: json["SRD"] == null ? null : Aed.fromJson(json["SRD"]),
        uah: json["UAH"] == null ? null : Aed.fromJson(json["UAH"]),
        czk: json["CZK"] == null ? null : Aed.fromJson(json["CZK"]),
        hnl: json["HNL"] == null ? null : Aed.fromJson(json["HNL"]),
        wst: json["WST"] == null ? null : Aed.fromJson(json["WST"]),
        lak: json["LAK"] == null ? null : Aed.fromJson(json["LAK"]),
        cve: json["CVE"] == null ? null : Aed.fromJson(json["CVE"]),
        etb: json["ETB"] == null ? null : Aed.fromJson(json["ETB"]),
        bdt: json["BDT"] == null ? null : Aed.fromJson(json["BDT"]),
        byn: json["BYN"] == null ? null : Aed.fromJson(json["BYN"]),
        hrk: json["HRK"] == null ? null : Aed.fromJson(json["HRK"]),
        kwd: json["KWD"] == null ? null : Aed.fromJson(json["KWD"]),
        mad: json["MAD"] == null ? null : Aed.fromJson(json["MAD"]),
        rub: json["RUB"] == null ? null : Aed.fromJson(json["RUB"]),
        lkr: json["LKR"] == null ? null : Aed.fromJson(json["LKR"]),
        pln: json["PLN"] == null ? null : Aed.fromJson(json["PLN"]),
        mga: json["MGA"] == null ? null : Aed.fromJson(json["MGA"]),
        crc: json["CRC"] == null ? null : Aed.fromJson(json["CRC"]),
        mop: json["MOP"] == null ? null : Aed.fromJson(json["MOP"]),
        nad: json["NAD"] == null ? null : Aed.fromJson(json["NAD"]),
        scr: json["SCR"] == null ? null : Aed.fromJson(json["SCR"]),
        pab: json["PAB"] == null ? null : Aed.fromJson(json["PAB"]),
        htg: json["HTG"] == null ? null : Aed.fromJson(json["HTG"]),
        ars: json["ARS"] == null ? null : Aed.fromJson(json["ARS"]),
        mwk: json["MWK"] == null ? null : Aed.fromJson(json["MWK"]),
        kid: json["KID"] == null ? null : Aed.fromJson(json["KID"]),
        syp: json["SYP"] == null ? null : Aed.fromJson(json["SYP"]),
        huf: json["HUF"] == null ? null : Aed.fromJson(json["HUF"]),
        kyd: json["KYD"] == null ? null : Aed.fromJson(json["KYD"]),
        bob: json["BOB"] == null ? null : Aed.fromJson(json["BOB"]),
        djf: json["DJF"] == null ? null : Aed.fromJson(json["DJF"]),
        ngn: json["NGN"] == null ? null : Aed.fromJson(json["NGN"]),
        stn: json["STN"] == null ? null : Aed.fromJson(json["STN"]),
        nio: json["NIO"] == null ? null : Aed.fromJson(json["NIO"]),
        bsd: json["BSD"] == null ? null : Aed.fromJson(json["BSD"]),
        clp: json["CLP"] == null ? null : Aed.fromJson(json["CLP"]),
        myr: json["MYR"] == null ? null : Aed.fromJson(json["MYR"]),
        tvd: json["TVD"] == null ? null : Aed.fromJson(json["TVD"]),
        sbd: json["SBD"] == null ? null : Aed.fromJson(json["SBD"]),
        tzs: json["TZS"] == null ? null : Aed.fromJson(json["TZS"]),
        kpw: json["KPW"] == null ? null : Aed.fromJson(json["KPW"]),
        egp: json["EGP"] == null ? null : Aed.fromJson(json["EGP"]),
        jod: json["JOD"] == null ? null : Aed.fromJson(json["JOD"]),
        jmd: json["JMD"] == null ? null : Aed.fromJson(json["JMD"]),
        khr: json["KHR"] == null ? null : Aed.fromJson(json["KHR"]),
        mur: json["MUR"] == null ? null : Aed.fromJson(json["MUR"]),
        gmd: json["GMD"] == null ? null : Aed.fromJson(json["GMD"]),
        lsl: json["LSL"] == null ? null : Aed.fromJson(json["LSL"]),
        dzd: json["DZD"] == null ? null : Aed.fromJson(json["DZD"]),
        aed: json["AED"] == null ? null : Aed.fromJson(json["AED"]),
        mzn: json["MZN"] == null ? null : Aed.fromJson(json["MZN"]),
        zmw: json["ZMW"] == null ? null : Aed.fromJson(json["ZMW"]),
        gtq: json["GTQ"] == null ? null : Aed.fromJson(json["GTQ"]),
        krw: json["KRW"] == null ? null : Aed.fromJson(json["KRW"]),
        kgs: json["KGS"] == null ? null : Aed.fromJson(json["KGS"]),
        fkp: json["FKP"] == null ? null : Aed.fromJson(json["FKP"]),
        kzt: json["KZT"] == null ? null : Aed.fromJson(json["KZT"]),
        bwp: json["BWP"] == null ? null : Aed.fromJson(json["BWP"]),
        bbd: json["BBD"] == null ? null : Aed.fromJson(json["BBD"]),
        top: json["TOP"] == null ? null : Aed.fromJson(json["TOP"]),
        thb: json["THB"] == null ? null : Aed.fromJson(json["THB"]),
        cad: json["CAD"] == null ? null : Aed.fromJson(json["CAD"]),
        gel: json["GEL"] == null ? null : Aed.fromJson(json["GEL"]),
        fjd: json["FJD"] == null ? null : Aed.fromJson(json["FJD"]),
        amd: json["AMD"] == null ? null : Aed.fromJson(json["AMD"]),
        dop: json["DOP"] == null ? null : Aed.fromJson(json["DOP"]),
        ggp: json["GGP"] == null ? null : Aed.fromJson(json["GGP"]),
        tmt: json["TMT"] == null ? null : Aed.fromJson(json["TMT"]),
        npr: json["NPR"] == null ? null : Aed.fromJson(json["NPR"]),
        mvr: json["MVR"] == null ? null : Aed.fromJson(json["MVR"]),
        lyd: json["LYD"] == null ? null : Aed.fromJson(json["LYD"]),
        brl: json["BRL"] == null ? null : Aed.fromJson(json["BRL"]),
      );

  Map<String, dynamic> toJson() => {
        "AFN": afn == null ? null : afn!.toJson(),
        "SDG": sdg == null ? null : sdg!.toJson(),
        "BIF": bif == null ? null : bif!.toJson(),
        "MXN": mxn == null ? null : mxn!.toJson(),
        "CUC": cuc == null ? null : cuc!.toJson(),
        "CUP": cup == null ? null : cup!.toJson(),
        "RSD": rsd == null ? null : rsd!.toJson(),
        "EUR": eur == null ? null : eur!.toJson(),
        "BTN": btn == null ? null : btn!.toJson(),
        "INR": inr == null ? null : inr!.toJson(),
        "GYD": gyd == null ? null : gyd!.toJson(),
        "SHP": shp == null ? null : shp!.toJson(),
        "BAM": bam == null ? null : bam!.toJson(),
        "BND": bnd == null ? null : bnd!.toJson(),
        "SGD": sgd == null ? null : sgd!.toJson(),
        "PKR": pkr == null ? null : pkr!.toJson(),
        "KES": kes == null ? null : kes!.toJson(),
        "USD": usd == null ? null : usd!.toJson(),
        "SOS": sos == null ? null : sos!.toJson(),
        "NOK": nok == null ? null : nok!.toJson(),
        "SLL": sll == null ? null : sll!.toJson(),
        "XPF": xpf == null ? null : xpf!.toJson(),
        "AZN": azn == null ? null : azn!.toJson(),
        "CKD": ckd == null ? null : ckd!.toJson(),
        "NZD": nzd == null ? null : nzd!.toJson(),
        "PEN": pen == null ? null : pen!.toJson(),
        "AOA": aoa == null ? null : aoa!.toJson(),
        "XAF": xaf == null ? null : xaf!.toJson(),
        "SSP": ssp == null ? null : ssp!.toJson(),
        "TRY": currenciesTry == null ? null : currenciesTry!.toJson(),
        "XCD": xcd == null ? null : xcd!.toJson(),
        "AWG": awg == null ? null : awg!.toJson(),
        "TWD": twd == null ? null : twd!.toJson(),
        "SEK": sek == null ? null : sek!.toJson(),
        "LRD": lrd == null ? null : lrd!.toJson(),
        "VES": ves == null ? null : ves!.toJson(),
        "BMD": bmd == null ? null : bmd!.toJson(),
        "ALL": all == null ? null : all!.toJson(),
        "HKD": hkd == null ? null : hkd!.toJson(),
        "ERN": ern == null ? null : ern!.toJson(),
        "COP": cop == null ? null : cop!.toJson(),
        "MNT": mnt == null ? null : mnt!.toJson(),
        "YER": yer == null ? null : yer!.toJson(),
        "LBP": lbp == null ? null : lbp!.toJson(),
        "VND": vnd == null ? null : vnd!.toJson(),
        "GBP": gbp == null ? null : gbp!.toJson(),
        "JEP": jep == null ? null : jep!.toJson(),
        "TTD": ttd == null ? null : ttd!.toJson(),
        "ILS": ils == null ? null : ils!.toJson(),
        "BGN": bgn == null ? null : bgn!.toJson(),
        "GIP": gip == null ? null : gip!.toJson(),
        "ANG": ang == null ? null : ang!.toJson(),
        "SAR": sar == null ? null : sar!.toJson(),
        "GHS": ghs == null ? null : ghs!.toJson(),
        "MDL": mdl == null ? null : mdl!.toJson(),
        "PGK": pgk == null ? null : pgk!.toJson(),
        "BZD": bzd == null ? null : bzd!.toJson(),
        "KMF": kmf == null ? null : kmf!.toJson(),
        "XOF": xof == null ? null : xof!.toJson(),
        "DKK": dkk == null ? null : dkk!.toJson(),
        "FOK": fok == null ? null : fok!.toJson(),
        "GNF": gnf == null ? null : gnf!.toJson(),
        "TND": tnd == null ? null : tnd!.toJson(),
        "IDR": idr == null ? null : idr!.toJson(),
        "TJS": tjs == null ? null : tjs!.toJson(),
        "CDF": cdf == null ? null : cdf!.toJson(),
        "RON": ron == null ? null : ron!.toJson(),
        "QAR": qar == null ? null : qar!.toJson(),
        "CNY": cny == null ? null : cny!.toJson(),
        "AUD": aud == null ? null : aud!.toJson(),
        "MRU": mru == null ? null : mru!.toJson(),
        "UZS": uzs == null ? null : uzs!.toJson(),
        "ISK": isk == null ? null : isk!.toJson(),
        "OMR": omr == null ? null : omr!.toJson(),
        "MKD": mkd == null ? null : mkd!.toJson(),
        "CHF": chf == null ? null : chf!.toJson(),
        "PYG": pyg == null ? null : pyg!.toJson(),
        "BHD": bhd == null ? null : bhd!.toJson(),
        "JPY": jpy == null ? null : jpy!.toJson(),
        "IQD": iqd == null ? null : iqd!.toJson(),
        "IMP": imp == null ? null : imp!.toJson(),
        "MMK": mmk == null ? null : mmk!.toJson(),
        "VUV": vuv == null ? null : vuv!.toJson(),
        "ZWL": zwl == null ? null : zwl!.toJson(),
        "PHP": php == null ? null : php!.toJson(),
        "SZL": szl == null ? null : szl!.toJson(),
        "ZAR": zar == null ? null : zar!.toJson(),
        "RWF": rwf == null ? null : rwf!.toJson(),
        "UGX": ugx == null ? null : ugx!.toJson(),
        "IRR": irr == null ? null : irr!.toJson(),
        "UYU": uyu == null ? null : uyu!.toJson(),
        "SRD": srd == null ? null : srd!.toJson(),
        "UAH": uah == null ? null : uah!.toJson(),
        "CZK": czk == null ? null : czk!.toJson(),
        "HNL": hnl == null ? null : hnl!.toJson(),
        "WST": wst == null ? null : wst!.toJson(),
        "LAK": lak == null ? null : lak!.toJson(),
        "CVE": cve == null ? null : cve!.toJson(),
        "ETB": etb == null ? null : etb!.toJson(),
        "BDT": bdt == null ? null : bdt!.toJson(),
        "BYN": byn == null ? null : byn!.toJson(),
        "HRK": hrk == null ? null : hrk!.toJson(),
        "KWD": kwd == null ? null : kwd!.toJson(),
        "MAD": mad == null ? null : mad!.toJson(),
        "RUB": rub == null ? null : rub!.toJson(),
        "LKR": lkr == null ? null : lkr!.toJson(),
        "PLN": pln == null ? null : pln!.toJson(),
        "MGA": mga == null ? null : mga!.toJson(),
        "CRC": crc == null ? null : crc!.toJson(),
        "MOP": mop == null ? null : mop!.toJson(),
        "NAD": nad == null ? null : nad!.toJson(),
        "SCR": scr == null ? null : scr!.toJson(),
        "PAB": pab == null ? null : pab!.toJson(),
        "HTG": htg == null ? null : htg!.toJson(),
        "ARS": ars == null ? null : ars!.toJson(),
        "MWK": mwk == null ? null : mwk!.toJson(),
        "KID": kid == null ? null : kid!.toJson(),
        "SYP": syp == null ? null : syp!.toJson(),
        "HUF": huf == null ? null : huf!.toJson(),
        "KYD": kyd == null ? null : kyd!.toJson(),
        "BOB": bob == null ? null : bob!.toJson(),
        "DJF": djf == null ? null : djf!.toJson(),
        "NGN": ngn == null ? null : ngn!.toJson(),
        "STN": stn == null ? null : stn!.toJson(),
        "NIO": nio == null ? null : nio!.toJson(),
        "BSD": bsd == null ? null : bsd!.toJson(),
        "CLP": clp == null ? null : clp!.toJson(),
        "MYR": myr == null ? null : myr!.toJson(),
        "TVD": tvd == null ? null : tvd!.toJson(),
        "SBD": sbd == null ? null : sbd!.toJson(),
        "TZS": tzs == null ? null : tzs!.toJson(),
        "KPW": kpw == null ? null : kpw!.toJson(),
        "EGP": egp == null ? null : egp!.toJson(),
        "JOD": jod == null ? null : jod!.toJson(),
        "JMD": jmd == null ? null : jmd!.toJson(),
        "KHR": khr == null ? null : khr!.toJson(),
        "MUR": mur == null ? null : mur!.toJson(),
        "GMD": gmd == null ? null : gmd!.toJson(),
        "LSL": lsl == null ? null : lsl!.toJson(),
        "DZD": dzd == null ? null : dzd!.toJson(),
        "AED": aed == null ? null : aed!.toJson(),
        "MZN": mzn == null ? null : mzn!.toJson(),
        "ZMW": zmw == null ? null : zmw!.toJson(),
        "GTQ": gtq == null ? null : gtq!.toJson(),
        "KRW": krw == null ? null : krw!.toJson(),
        "KGS": kgs == null ? null : kgs!.toJson(),
        "FKP": fkp == null ? null : fkp!.toJson(),
        "KZT": kzt == null ? null : kzt!.toJson(),
        "BWP": bwp == null ? null : bwp!.toJson(),
        "BBD": bbd == null ? null : bbd!.toJson(),
        "TOP": top == null ? null : top!.toJson(),
        "THB": thb == null ? null : thb!.toJson(),
        "CAD": cad == null ? null : cad!.toJson(),
        "GEL": gel == null ? null : gel!.toJson(),
        "FJD": fjd == null ? null : fjd!.toJson(),
        "AMD": amd == null ? null : amd!.toJson(),
        "DOP": dop == null ? null : dop!.toJson(),
        "GGP": ggp == null ? null : ggp!.toJson(),
        "TMT": tmt == null ? null : tmt!.toJson(),
        "NPR": npr == null ? null : npr!.toJson(),
        "MVR": mvr == null ? null : mvr!.toJson(),
        "LYD": lyd == null ? null : lyd!.toJson(),
        "BRL": brl == null ? null : brl!.toJson(),
      };
}

class Aed {
  Aed({
    this.name,
    this.symbol,
  });

  String? name;
  String? symbol;

  factory Aed.fromJson(Map<String, dynamic> json) => Aed(
        name: json["name"],
        symbol: json["symbol"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "symbol": symbol,
      };
}

class Bam {
  Bam({
    this.name,
  });

  String? name;

  factory Bam.fromJson(Map<String, dynamic> json) => Bam(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}

class Demonyms {
  Demonyms({
    this.eng,
    this.fra,
  });

  Eng? eng;
  Eng? fra;

  factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
        eng: Eng.fromJson(json["eng"]),
        fra: json["fra"] == null ? null : Eng.fromJson(json["fra"]),
      );

  Map<String, dynamic> toJson() => {
        "eng": eng!.toJson(),
        "fra": fra == null ? null : fra!.toJson(),
      };
}

class Eng {
  Eng({
    this.f,
    this.m,
  });

  String? f;
  String? m;

  factory Eng.fromJson(Map<String, dynamic> json) => Eng(
        f: json["f"],
        m: json["m"],
      );

  Map<String, dynamic> toJson() => {
        "f": f,
        "m": m,
      };
}

class Idd {
  Idd({
    this.root,
    this.suffixes,
  });

  String? root;
  List<String>? suffixes;

  factory Idd.fromJson(Map<String, dynamic> json) => Idd(
        root: json["root"] == null ? null : json["root"],
        suffixes: json["suffixes"] == null
            ? null
            : List<String>.from(json["suffixes"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "root": root == null ? null : root,
        "suffixes": suffixes == null
            ? null
            : List<dynamic>.from(suffixes!.map((x) => x)),
      };
}

class Maps {
  Maps({
    this.googleMaps,
    this.openStreetMaps,
  });

  String? googleMaps;
  String? openStreetMaps;

  factory Maps.fromJson(Map<String, dynamic> json) => Maps(
        googleMaps: json["googleMaps"],
        openStreetMaps: json["openStreetMaps"],
      );

  Map<String, dynamic> toJson() => {
        "googleMaps": googleMaps,
        "openStreetMaps": openStreetMaps,
      };
}

class Name {
  Name({
    this.common,
    this.official,
    this.nativeName,
  });

  String? common;
  String? official;
  Map<String, Translation>? nativeName;

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        common: json["common"],
        official: json["official"],
        nativeName: json["nativeName"] == null
            ? null
            : Map.from(json["nativeName"]).map((k, v) =>
                MapEntry<String, Translation>(k, Translation.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "common": common,
        "official": official,
        "nativeName": nativeName == null
            ? null
            : Map.from(nativeName!)
                .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class Translation {
  Translation({
    this.official,
    this.common,
  });

  String? official;
  String? common;

  factory Translation.fromJson(Map<String, dynamic> json) => Translation(
        official: json["official"],
        common: json["common"],
      );

  Map<String, dynamic> toJson() => {
        "official": official,
        "common": common,
      };
}

class PostalCode {
  PostalCode({
    this.format,
    this.regex,
  });

  String? format;
  String? regex;

  factory PostalCode.fromJson(Map<String, dynamic> json) => PostalCode(
        format: json["format"],
        regex: json["regex"] == null ? null : json["regex"],
      );

  Map<String, dynamic> toJson() => {
        "format": format,
        "regex": regex == null ? null : regex,
      };
}
