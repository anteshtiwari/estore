import 'dart:convert';

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

String dataModeToJson(DataModel data) => json.encode(data.toJson());

class DataModel {
  DataModel({
    this.name,
    this.job,
    this.id,
    this.createdAt,
  });

  String name;
  String job;
  String id;
  String createdAt;

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        name: json["name"],
        job: json["job"],
        id: json["id"],
        createdAt: json["createdAt"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "job": job,
        "id": id,
        "createdAt": createdAt,
      };
}
