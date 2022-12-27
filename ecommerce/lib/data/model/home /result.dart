
import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'result.g.dart';

@JsonSerializable()
class Result {
  const Result({
    required this.data,
  });

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  @JsonKey(name: 'data')
  final List<Data> data;

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}