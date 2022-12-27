import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  const Data({
    required this.id,
    required this.name,
    required this.price,
    required this.initialPrice,
    required this.imageURL,
    required this.saled,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'price')
  final int price;

  @JsonKey(name: 'initialPrice')
  final int initialPrice;

  @JsonKey(name: 'imageURL')
  final String imageURL;

  @JsonKey(name: 'saled')
  final int saled;

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
