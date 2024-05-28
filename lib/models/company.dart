import 'package:json_annotation/json_annotation.dart';

part 'company.g.dart';
@JsonSerializable()
class Company {
  String name;
  String location;

  Company({
    required this.name,
    required this.location,
  });

  factory Company.fromJson(
    Map<String, dynamic> mapData,
  ){
    return _$CompanyFromJson(mapData);
  }
  Map<String,dynamic>toJson(){
    return _$CompanyToJson(this);
  }
}
