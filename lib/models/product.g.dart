// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      catigoryName: json['catigoryName'] as String,
      catigoryprice: json['catigoryprice'] as String,
      catigoryInStock: json['catigoryInStock'] as String,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'catigoryName': instance.catigoryName,
      'catigoryprice': instance.catigoryprice,
      'catigoryInStock': instance.catigoryInStock,
    };
