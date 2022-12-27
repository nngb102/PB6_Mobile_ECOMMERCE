import 'package:ecommerce/data/model/order/item_order_dtos.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order.g.dart';

@JsonSerializable()
class Order {
  Order({
    this.id,
    required this.state,
    required this.message,
    required this.address,
    this.createDate,
    required this.recipientName,
    required this.recipientPhone,
    this.userId,
    this.voucherId,
    required this.paymentMethodId,
    required this.totalPrice,
    required this.itemOrderDtos,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
  Map<String, dynamic> toJson() => _$OrderToJson(this);

  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'state')
  final int state;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'address')
  final String address;

  @JsonKey(name: 'createDate')
  final String? createDate;

  @JsonKey(name: 'recipientName')
  final String recipientName;

  @JsonKey(name: 'recipientPhone')
  final String recipientPhone;

  @JsonKey(name: 'userId')
  final int? userId;

  @JsonKey(name: 'voucherId')
  final dynamic voucherId;

  @JsonKey(name: 'paymentMethodId')
  final int paymentMethodId;

  @JsonKey(name: 'totalPrice')
  final int totalPrice;

  @JsonKey(name: 'itemOrderDtos')
  final List<ItemOrderDtos> itemOrderDtos;
}
