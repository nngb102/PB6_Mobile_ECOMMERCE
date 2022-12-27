import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'home_get_product_detail.g.dart';

@JsonSerializable()
class HomeGetProductDetail {
  HomeGetProductDetail({
    required this.state,
    required this.message,
    required this.result,
  });

  factory HomeGetProductDetail.fromJson(Map<String, dynamic> json) =>
      _$HomeGetProductDetailFromJson(json);
  Map<String, dynamic> toJson() => _$HomeGetProductDetailToJson(this);

  @JsonKey(name: 'state')
  final bool state;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'result')
  final Result result;
}
