import 'package:ecommerce/data/model/order/item_order_dtos.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  User({required this.username, required this.password, 
    
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @JsonKey(name: 'username')
  final String username;

  @JsonKey(name: 'password')
  final String password;

  
}
