import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';
@JsonSerializable()
class Product {
  String catigoryName;
  String catigoryprice;
  String catigoryInStock;

  Product({
    required this.catigoryName,
    required this.catigoryprice,
    required this.catigoryInStock,
  });


  factory Product.fromJson(
      Map<String, dynamic> mapDataPro,
      ){
    return _$ProductFromJson(mapDataPro);
  }
  Map<String,dynamic>toJson(){
    return _$ProductToJson(this);
  }
}
