///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class CreateuserDataUser {
/*
{
  "email": "jpernia@gmail.com",
  "type": "lc",
  "phoneNumber": "3227313442",
  "systemCountry": "CO",
  "phonePrefix": "+57",
  "fullname": "Kubo Developer",
  "photoUrl": "",
  "id": "6f3e48b1-00e6-478f-993b-6d5e3bd82fe1",
  "verificationCode": ""
}
*/

  String? email;
  String? type;
  String? phoneNumber;
  String? systemCountry;
  String? phonePrefix;
  String? fullname;
  String? photoUrl;
  String? id;
  String? verificationCode;
  String? imei;
  bool? verificationCodeSim;

  CreateuserDataUser({
    this.email,
    this.type,
    this.phoneNumber,
    this.systemCountry,
    this.phonePrefix,
    this.fullname,
    this.photoUrl,
    this.id,
    this.verificationCode,
    this.imei,
    this.verificationCodeSim
  });
  CreateuserDataUser.fromJson(Map<String, dynamic> json) {
    email = json["email"]?.toString();
    type = json["type"]?.toString();
    phoneNumber = json["phoneNumber"]?.toString();
    systemCountry = json["systemCountry"]?.toString();
    phonePrefix = json["phonePrefix"]?.toString();
    fullname = json["fullname"]?.toString();
    photoUrl = json["photoUrl"]?.toString();
    id = json["id"]?.toString();
    verificationCode = json["verificationCode"]?.toString();
    imei = json["imei"]?.toString();
    verificationCodeSim = json["verificationCodeSim"] ?? false ;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["email"] = email;
    data["type"] = type;
    data["phoneNumber"] = phoneNumber;
    data["systemCountry"] = systemCountry;
    data["phonePrefix"] = phonePrefix;
    data["fullname"] = fullname;
    data["photoUrl"] = photoUrl;
    data["id"] = id;
    data["verificationCode"] = verificationCode;
    data["imei"] = imei;
    data["verificationCodeSim"] = verificationCodeSim;
    return data;
  }
}

class CreateuserData {
/*
{
  "user": {
    "email": "jpernia@gmail.com",
    "type": "lc",
    "phoneNumber": "3227313442",
    "systemCountry": "CO",
    "phonePrefix": "+57",
    "fullname": "Kubo Developer",
    "photoUrl": "",
    "id": "6f3e48b1-00e6-478f-993b-6d5e3bd82fe1",
    "verificationCode": ""
  },
  "authToken": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjZmM2U0OGIxLTAwZTYtNDc4Zi05OTNiLTZkNWUzYmQ4MmZlMSIsIm1vZGVsTmFtZSI6InVzZXIiLCJpYXQiOjE2Mjc2NjE3NTF9.TiYNdLfJ06gqabpFN-WsnHnaCc9rRAylqi7MIx9mwYI"
}
*/

  CreateuserDataUser? user;
  String? authToken;

  CreateuserData({
    this.user,
    this.authToken,
  });
  CreateuserData.fromJson(Map<String, dynamic> json) {
    user = (json["user"] != null && (json["user"] is Map)) ? CreateuserDataUser.fromJson(json["user"]) : null;
    authToken = json["authToken"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (user != null) {
      data["user"] = user!.toJson();
    }
    data["authToken"] = authToken;
    return data;
  }
}

class Createuser {
/*
{
  "code": 100,
  "message": "El usuario ha sido creado con éxito",
  "status": true,
  "data": {
    "user": {
      "email": "jpernia@gmail.com",
      "type": "lc",
      "phoneNumber": "3227313442",
      "systemCountry": "CO",
      "phonePrefix": "+57",
      "fullname": "Kubo Developer",
      "photoUrl": "",
      "id": "6f3e48b1-00e6-478f-993b-6d5e3bd82fe1",
      "verificationCode": ""
    },
    "authToken": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjZmM2U0OGIxLTAwZTYtNDc4Zi05OTNiLTZkNWUzYmQ4MmZlMSIsIm1vZGVsTmFtZSI6InVzZXIiLCJpYXQiOjE2Mjc2NjE3NTF9.TiYNdLfJ06gqabpFN-WsnHnaCc9rRAylqi7MIx9mwYI"
  }
}
*/

  int? code;
  String? message;
  bool? status;
  CreateuserData? data;

  Createuser({
    this.code,
    this.message,
    this.status,
    this.data,
  });
  Createuser.fromJson(Map<String, dynamic> json) {
    code = int.tryParse(json["code"]?.toString() ?? '');
    message = json["message"]?.toString();
    status = json["status"];
    data = (json["data"] != null && (json["data"] is Map)) ? CreateuserData.fromJson(json["data"]) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["code"] = code;
    data["message"] = message;
    data["status"] = status;
    if (data != null) {
      data["data"] = this.data!.toJson();
    }
    return data;
  }
}