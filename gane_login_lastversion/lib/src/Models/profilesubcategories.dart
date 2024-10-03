///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class ProfilesubcategoriesDataQuestionsAnswersAnswersuser {
/*
{
  "answer": "",
  "check": true
}
*/

  String? answer;
  bool? check;
  String? from = "End";

  ProfilesubcategoriesDataQuestionsAnswersAnswersuser({
    this.answer,
    this.check,
    this.from,
  });
  ProfilesubcategoriesDataQuestionsAnswersAnswersuser.fromJson(Map<String, dynamic> json) {
    answer = json["answer"]?.toString();
    check = json["check"];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["answer"] = answer;
    data["check"] = check;
    return data;
  }
}

class ProfilesubcategoriesDataQuestionsAnswers {
/*
{
  "id": 54,
  "answers": "Verdadero",
  "answersuser": [
    {
      "answer": "",
      "check": true
    }
  ]
}
*/

  int? id;
  String? answers;
  List<ProfilesubcategoriesDataQuestionsAnswersAnswersuser?>? answersuser;

  ProfilesubcategoriesDataQuestionsAnswers({
    this.id,
    this.answers,
    this.answersuser,
  });
  ProfilesubcategoriesDataQuestionsAnswers.fromJson(Map<String, dynamic> json) {
    id = int.tryParse(json["id"]?.toString() ?? '');
    answers = json["answers"]?.toString();
    if (json["answersuser"] != null && (json["answersuser"] is List)) {
      final v = json["answersuser"];
      final arr0 = <ProfilesubcategoriesDataQuestionsAnswersAnswersuser>[];
      v.forEach((v) {
        arr0.add(ProfilesubcategoriesDataQuestionsAnswersAnswersuser.fromJson(v));
      });
      answersuser = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["id"] = id;
    data["answers"] = answers;
    if (answersuser != null) {
      final v = answersuser;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data["answersuser"] = arr0;
    }
    return data;
  }
}

class ProfilesubcategoriesDataQuestionsType {
/*
{
  "id": 2,
  "name": "Verdadero o Falso"
}
*/

  int? id;
  String? name;

  ProfilesubcategoriesDataQuestionsType({
    this.id,
    this.name,
  });
  ProfilesubcategoriesDataQuestionsType.fromJson(Map<String, dynamic> json) {
    id = int.tryParse(json["id"]?.toString() ?? '');
    name = json["name"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["id"] = id;
    data["name"] = name;
    return data;
  }
}

class ProfilesubcategoriesDataQuestions {
/*
{
  "id": 28,
  "question": "¿Quieres emprender?",
  "type": {
    "id": 2,
    "name": "Verdadero o Falso"
  },
  "answers": [
    {
      "id": 54,
      "answers": "Verdadero",
      "answersuser": [
        {
          "answer": "",
          "check": true
        }
      ]
    }
  ]
}
*/

  int? id;
  String? question;
  ProfilesubcategoriesDataQuestionsType? type;
  List<ProfilesubcategoriesDataQuestionsAnswers?>? answers;

  ProfilesubcategoriesDataQuestions({
    this.id,
    this.question,
    this.type,
    this.answers,
  });
  ProfilesubcategoriesDataQuestions.fromJson(Map<String, dynamic> json) {
    id = int.tryParse(json["id"]?.toString() ?? '');
    question = json["question"]?.toString();
    type = (json["type"] != null && (json["type"] is Map)) ? ProfilesubcategoriesDataQuestionsType.fromJson(json["type"]) : null;
    if (json["answers"] != null && (json["answers"] is List)) {
      final v = json["answers"];
      final arr0 = <ProfilesubcategoriesDataQuestionsAnswers>[];
      v.forEach((v) {
        arr0.add(ProfilesubcategoriesDataQuestionsAnswers.fromJson(v));
      });
      answers = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["id"] = id;
    data["question"] = question;
    if (type != null) {
      data["type"] = type!.toJson();
    }
    if (answers != null) {
      final v = answers;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data["answers"] = arr0;
    }
    return data;
  }
}


class ProfilesubcategoriesDataSubcategorysuser {
/*
{
  "answer": "",
  "check": true
}
*/

  String? subCategoryStatus;
  String? from = "End";

  ProfilesubcategoriesDataSubcategorysuser({
    this.subCategoryStatus,
    this.from,
  });
  ProfilesubcategoriesDataSubcategorysuser.fromJson(Map<String, dynamic> json) {
    subCategoryStatus = json["subCategoryStatus"];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["subCategoryStatus"] = subCategoryStatus;
    return data;
  }
}

class ProfilesubcategoriesData {
/*
{
  "id": 12,
  "name": "Ingresos",
  "questions": [
    {
      "id": 28,
      "question": "¿Quieres emprender?",
      "type": {
        "id": 2,
        "name": "Verdadero o Falso"
      },
      "answers": [
        {
          "id": 54,
          "answers": "Verdadero",
          "answersuser": [
            {
              "answer": "",
              "check": true
            }
          ]
        }
      ]
    }
  ]
}
*/

  int? id;
  String? name;
  List<ProfilesubcategoriesDataQuestions?>? questions;
  List<ProfilesubcategoriesDataSubcategorysuser?>? subcategoryuser;
  String select = "";

  ProfilesubcategoriesData({
    this.id,
    this.name,
    this.questions,
    this.subcategoryuser,
  });
  ProfilesubcategoriesData.fromJson(Map<String, dynamic> json) {
    id = int.tryParse(json["id"]?.toString() ?? '');
    name = json["name"]?.toString();
    if (json["questions"] != null && (json["questions"] is List)) {
      final v = json["questions"];
      final arr0 = <ProfilesubcategoriesDataQuestions>[];
      v.forEach((v) {
        arr0.add(ProfilesubcategoriesDataQuestions.fromJson(v));
      });
      questions = arr0;
    }

    if (json["subcategoryuser"] != null && (json["subcategoryuser"] is List)) {
      final v = json["subcategoryuser"];
      final arr0 = <ProfilesubcategoriesDataSubcategorysuser>[];
      v.forEach((v) {
        arr0.add(ProfilesubcategoriesDataSubcategorysuser.fromJson(v));
      });
      subcategoryuser = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["id"] = id;
    data["name"] = name;
    if (questions != null) {
      final v = questions;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data["questions"] = arr0;
    }
    if (subcategoryuser != null) {
      final v = subcategoryuser;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data["subcategoryuser"] = arr0;
    }
    return data;
  }
}

class Profilesubcategories {
/*
{
  "code": 100,
  "message": "Información listada correctamente",
  "status": true,
  "data": [
    {
      "id": 12,
      "name": "Ingresos",
      "questions": [
        {
          "id": 28,
          "question": "¿Quieres emprender?",
          "type": {
            "id": 2,
            "name": "Verdadero o Falso"
          },
          "answers": [
            {
              "id": 54,
              "answers": "Verdadero",
              "answersuser": [
                {
                  "answer": "",
                  "check": true
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}
*/

  int? code;
  String? message;
  bool? status;
  List<ProfilesubcategoriesData?>? data;

  Profilesubcategories({
    this.code,
    this.message,
    this.status,
    this.data,
  });
  Profilesubcategories.fromJson(Map<String, dynamic> json) {
    code = int.tryParse(json["code"]?.toString() ?? '');
    message = json["message"]?.toString();
    status = json["status"];
    if (json["data"] != null && (json["data"] is List)) {
      final v = json["data"];
      final arr0 = <ProfilesubcategoriesData>[];
      v.forEach((v) {
        arr0.add(ProfilesubcategoriesData.fromJson(v));
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