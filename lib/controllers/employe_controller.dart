import 'package:flutter/material.dart';
import 'package:homework_44/models/employee.dart';

import '../models/company.dart'; // your_project_name ni o'zingizning proyekt nomingizga o'zgartiring

class EmployeeController extends ChangeNotifier {
  List<Employee> _employies = [];

  void addEmployee(Employee employees) {
    _employies.add(employees);
    notifyListeners();
  }

  void removeEmployee(Employee employees) {
    _employies.remove(employees);
    notifyListeners();
  }

  List<Employee> getEmployees() {
    return _employies;
  }
}
