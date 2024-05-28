import 'package:flutter/material.dart';
import '../models/product.dart';
class ProductController extends ChangeNotifier {
  List<Product> _products = [];


  void addProduct(Product product) {
    _products.add(product);
    notifyListeners();
  }


  void removeProduct(Product product) {
    _products.remove(product);
    notifyListeners();
  }


  List<Product> getProducts() {
    return _products;
  }
}
