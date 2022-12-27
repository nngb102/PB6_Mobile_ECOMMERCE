// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_get_product_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeGetProductDetail _$HomeGetProductDetailFromJson(
        Map<String, dynamic> json) =>
    HomeGetProductDetail(
      state: json['state'] as bool,
      message: json['message'] as String,
      result: Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomeGetProductDetailToJson(
        HomeGetProductDetail instance) =>
    <String, dynamic>{
      'state': instance.state,
      'message': instance.message,
      'result': instance.result,
    };
