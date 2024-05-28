import 'package:json_annotation/json_annotation.dart';

part 'employee.g.dart';

@JsonSerializable()
class Employee{
  String employeeName;
  String employeeAge;
  String employeeposition;
  String employeeSkills;
  Employee({
    required this.employeeName,
    required this.employeeAge,
    required  this.employeeposition,
    required this.employeeSkills,
  });


  factory Employee.fromJson(
      Map<String, dynamic> mapDataEm,
      ){
    return _$EmployeeFromJson(mapDataEm);
  }
  Map<String,dynamic>toJson(){
    return _$EmployeeToJson(this);
  }
}