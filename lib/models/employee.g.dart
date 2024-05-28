// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Employee _$EmployeeFromJson(Map<String, dynamic> json) => Employee(
      employeeName: json['employeeName'] as String,
      employeeAge: json['employeeAge'] as String,
      employeeposition: json['employeeposition'] as String,
      employeeSkills: json['employeeSkills'] as String,
    );

Map<String, dynamic> _$EmployeeToJson(Employee instance) => <String, dynamic>{
      'employeeName': instance.employeeName,
      'employeeAge': instance.employeeAge,
      'employeeposition': instance.employeeposition,
      'employeeSkills': instance.employeeSkills,
    };
