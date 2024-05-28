import 'package:flutter/material.dart';

import '../models/company.dart'; // your_project_name ni o'zingizning proyekt nomingizga o'zgartiring

class CompanyController extends ChangeNotifier {
  List<Company> _companies = [];


  void addCompany(Company company) {
    _companies.add(company);
  }


  void removeCompany(Company company) {
    _companies.remove(company);
    notifyListeners();
  }


  List<Company> getCompanies() {
    return _companies;
  }
}
