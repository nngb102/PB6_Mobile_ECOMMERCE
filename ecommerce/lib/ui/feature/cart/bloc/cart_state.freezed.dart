// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartState {
  CartStatus get cartStatus => throw _privateConstructorUsedError;
  String get allPrice => throw _privateConstructorUsedError;
  List<CartModel> get cart => throw _privateConstructorUsedError;
  List<IsCart> get isCart => throw _privateConstructorUsedError;
  List<CartModel> get cartPay => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call(
      {CartStatus cartStatus,
      String allPrice,
      List<CartModel> cart,
      List<IsCart> isCart,
      List<CartModel> cartPay});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartStatus = null,
    Object? allPrice = null,
    Object? cart = null,
    Object? isCart = null,
    Object? cartPay = null,
  }) {
    return _then(_value.copyWith(
      cartStatus: null == cartStatus
          ? _value.cartStatus
          : cartStatus // ignore: cast_nullable_to_non_nullable
              as CartStatus,
      allPrice: null == allPrice
          ? _value.allPrice
          : allPrice // ignore: cast_nullable_to_non_nullable
              as String,
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
      isCart: null == isCart
          ? _value.isCart
          : isCart // ignore: cast_nullable_to_non_nullable
              as List<IsCart>,
      cartPay: null == cartPay
          ? _value.cartPay
          : cartPay // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$_CartStateCopyWith(
          _$_CartState value, $Res Function(_$_CartState) then) =
      __$$_CartStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CartStatus cartStatus,
      String allPrice,
      List<CartModel> cart,
      List<IsCart> isCart,
      List<CartModel> cartPay});
}

/// @nodoc
class __$$_CartStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_CartState>
    implements _$$_CartStateCopyWith<$Res> {
  __$$_CartStateCopyWithImpl(
      _$_CartState _value, $Res Function(_$_CartState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartStatus = null,
    Object? allPrice = null,
    Object? cart = null,
    Object? isCart = null,
    Object? cartPay = null,
  }) {
    return _then(_$_CartState(
      cartStatus: null == cartStatus
          ? _value.cartStatus
          : cartStatus // ignore: cast_nullable_to_non_nullable
              as CartStatus,
      allPrice: null == allPrice
          ? _value.allPrice
          : allPrice // ignore: cast_nullable_to_non_nullable
              as String,
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
      isCart: null == isCart
          ? _value.isCart
          : isCart // ignore: cast_nullable_to_non_nullable
              as List<IsCart>,
      cartPay: null == cartPay
          ? _value.cartPay
          : cartPay // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
    ));
  }
}

/// @nodoc

class _$_CartState extends _CartState {
  _$_CartState(
      {required this.cartStatus,
      required this.allPrice,
      required this.cart,
      required this.isCart,
      required this.cartPay})
      : super._();

  @override
  final CartStatus cartStatus;
  @override
  final String allPrice;
  @override
  final List<CartModel> cart;
  @override
  final List<IsCart> isCart;
  @override
  final List<CartModel> cartPay;

  @override
  String toString() {
    return 'CartState(cartStatus: $cartStatus, allPrice: $allPrice, cart: $cart, isCart: $isCart, cartPay: $cartPay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartState &&
            (identical(other.cartStatus, cartStatus) ||
                other.cartStatus == cartStatus) &&
            (identical(other.allPrice, allPrice) ||
                other.allPrice == allPrice) &&
            const DeepCollectionEquality().equals(other.cart, cart) &&
            const DeepCollectionEquality().equals(other.isCart, isCart) &&
            const DeepCollectionEquality().equals(other.cartPay, cartPay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      cartStatus,
      allPrice,
      const DeepCollectionEquality().hash(cart),
      const DeepCollectionEquality().hash(isCart),
      const DeepCollectionEquality().hash(cartPay));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartStateCopyWith<_$_CartState> get copyWith =>
      __$$_CartStateCopyWithImpl<_$_CartState>(this, _$identity);
}

abstract class _CartState extends CartState {
  factory _CartState(
      {required final CartStatus cartStatus,
      required final String allPrice,
      required final List<CartModel> cart,
      required final List<IsCart> isCart,
      required final List<CartModel> cartPay}) = _$_CartState;
  _CartState._() : super._();

  @override
  CartStatus get cartStatus;
  @override
  String get allPrice;
  @override
  List<CartModel> get cart;
  @override
  List<IsCart> get isCart;
  @override
  List<CartModel> get cartPay;
  @override
  @JsonKey(ignore: true)
  _$$_CartStateCopyWith<_$_CartState> get copyWith =>
      throw _privateConstructorUsedError;
}
