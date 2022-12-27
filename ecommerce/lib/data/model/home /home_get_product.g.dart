// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_get_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeGetProduct _$HomeGetProductFromJson(Map<String, dynamic> json) =>
    HomeGetProduct(
      state: json['state'] as bool,
      message: json['message'] as String,
      result: Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomeGetProductToJson(HomeGetProduct instance) =>
    <String, dynamic>{
      'state': instance.state,
      'message': instance.message,
      'result': instance.result,
    };
