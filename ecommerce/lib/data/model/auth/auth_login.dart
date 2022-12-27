import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'auth_login.g.dart';

@JsonSerializable()
class AuthLogin {
  AuthLogin({
    required this.state,
    required this.message,
    required this.result,
  });

  factory AuthLogin.fromJson(Map<String, dynamic> json) =>
      _$AuthLoginFromJson(json);
  Map<String, dynamic> toJson() => _$AuthLoginToJson(this);

  @JsonKey(name: 'state')
  final bool state;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'result')
  final Result? result;
}
