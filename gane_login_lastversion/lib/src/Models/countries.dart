///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class CountriesDataOptions {


  String? status;
  String? createdAt;
  String? updatedAt;

  CountriesDataOptions({
    this.status,
    this.createdAt,
    this.updatedAt,
  });
  CountriesDataOptions.fromJson(Map<String, dynamic> json) {
    status = json["status"]?.toString();
    createdAt = json["createdAt"]?.toString();
    updatedAt = json["updatedAt"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["status"] = status;
    data["createdAt"] = createdAt;
    data["updatedAt"] = updatedAt;
    return data;
  }
}

class CountriesData {


  String? id;
  String? country;
  String? callingCode;
  String? flag;
  String? currency;
  CountriesDataOptions? options;

  CountriesData({
    this.id,
    this.country,
    this.callingCode,
    this.flag,
    this.currency,
    this.options,
  });
  CountriesData.fromJson(Map<String, dynamic> json) {
    id = json["id"]?.toString();
    country = json["country"]?.toString();
    callingCode = json["callingCode"]?.toString();
    flag = json["flag"]?.toString();
    currency = json["currency"]?.toString();
    options = (json["options"] != null && (json["options"] is Map)) ? CountriesDataOptions.fromJson(json["options"]) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["id"] = id;
    data["country"] = country;
    data["callingCode"] = callingCode;
    data["flag"] = flag;
    data["currency"] = currency;
    if (options != null) {
      data["options"] = options!.toJson();
    }
    return data;
  }
}

class Countries {


  int? code;
  String? message;
  bool? status;
  List<CountriesData?>? data;

  Countries({
    this.code,
    this.message,
    this.status,
    this.data,
  });
  Countries.fromJson(Map<String, dynamic> json) {
    code = int.tryParse(json["code"]?.toString() ?? '');
    message = json["message"]?.toString();
    status = json["status"];
    if (json["data"] != null && (json["data"] is List)) {
      final v = json["data"];
      final arr0 = <CountriesData>[];
      v.forEach((v) {
        arr0.add(CountriesData.fromJson(v));
      });
      this.data = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["code"] = code;
    data["message"] = message;
    data["status"] = status;
    if (this.data != null) {
      final v = this.data;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data["data"] = arr0;
    }
    return data;
  }
}