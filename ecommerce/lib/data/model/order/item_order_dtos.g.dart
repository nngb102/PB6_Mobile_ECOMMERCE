// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_order_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemOrderDtos _$ItemOrderDtosFromJson(Map<String, dynamic> json) =>
    ItemOrderDtos(
      orderId: json['orderId'] as int?,
      productDetailId: json['productDetailId'] as int,
      voucherProductId: json['voucherProductId'],
      amount: json['amount'] as int,
      price: json['price'] as int,
      note: json['note'] as String,
    );

Map<String, dynamic> _$ItemOrderDtosToJson(ItemOrderDtos instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'productDetailId': instance.productDetailId,
      'voucherProductId': instance.voucherProductId,
      'amount': instance.amount,
      'price': instance.price,
      'note': instance.note,
    };
