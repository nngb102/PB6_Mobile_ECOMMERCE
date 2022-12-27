// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int,
      name: json['name'] as String,
      price: json['price'] as int,
      initialPrice: json['initialPrice'] as int,
      imageURL: json['imageURL'] as String,
      saled: json['saled'] as int,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'initialPrice': instance.initialPrice,
      'imageURL': instance.imageURL,
      'saled': instance.saled,
    };
