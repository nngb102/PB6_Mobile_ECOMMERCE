import 'package:json_annotation/json_annotation.dart';
part 'item_order_dtos.g.dart';

@JsonSerializable()
class ItemOrderDtos {
  ItemOrderDtos({
    this.orderId,
    required this.productDetailId,
    this.voucherProductId,
    required this.amount,
    required this.price,
    required this.note,
  });

  factory ItemOrderDtos.fromJson(Map<String, dynamic> json) =>
      _$ItemOrderDtosFromJson(json);
  Map<String, dynamic> toJson() => _$ItemOrderDtosToJson(this);

  @JsonKey(name: 'orderId')
  final int? orderId;

  @JsonKey(name: 'productDetailId')
  final int productDetailId;

  @JsonKey(name: 'voucherProductId')
  final dynamic voucherProductId;

  @JsonKey(name: 'amount')
  final int amount;

  @JsonKey(name: 'price')
  final int price;

  @JsonKey(name: 'note')
  final String note;
}
