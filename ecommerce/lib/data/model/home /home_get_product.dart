import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'home_get_product.g.dart';

@JsonSerializable()
class HomeGetProduct {
  HomeGetProduct({
    required this.state,
    required this.message,
    required this.result,
  });

  factory HomeGetProduct.fromJson(Map<String, dynamic> json) =>
      _$HomeGetProductFromJson(json);
  Map<String, dynamic> toJson() => _$HomeGetProductToJson(this);

  @JsonKey(name: 'state')
  final bool state;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'result')
  final Result result;
}
