// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: json['id'] as int?,
      state: json['state'] as int,
      message: json['message'] as String,
      address: json['address'] as String,
      createDate: json['createDate'] as String?,
      recipientName: json['recipientName'] as String,
      recipientPhone: json['recipientPhone'] as String,
      userId: json['userId'] as int?,
      voucherId: json['voucherId'],
      paymentMethodId: json['paymentMethodId'] as int,
      totalPrice: json['totalPrice'] as int,
      itemOrderDtos: (json['itemOrderDtos'] as List<dynamic>)
          .map((e) => ItemOrderDtos.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'state': instance.state,
      'message': instance.message,
      'address': instance.address,
      'createDate': instance.createDate,
      'recipientName': instance.recipientName,
      'recipientPhone': instance.recipientPhone,
      'userId': instance.userId,
      'voucherId': instance.voucherId,
      'paymentMethodId': instance.paymentMethodId,
      'totalPrice': instance.totalPrice,
      'itemOrderDtos': instance.itemOrderDtos,
    };
