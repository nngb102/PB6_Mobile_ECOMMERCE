// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthLogin _$AuthLoginFromJson(Map<String, dynamic> json) => AuthLogin(
      state: json['state'] as bool,
      message: json['message'] as String,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthLoginToJson(AuthLogin instance) => <String, dynamic>{
      'state': instance.state,
      'message': instance.message,
      'result': instance.result,
    };
