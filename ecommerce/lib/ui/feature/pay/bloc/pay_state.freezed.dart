// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pay_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PayState {
  int get current => throw _privateConstructorUsedError;
  PayStatus get payStatus => throw _privateConstructorUsedError;
  String get allPrice => throw _privateConstructorUsedError;
  List<CartModel> get cart => throw _privateConstructorUsedError;
  String? get priceDisCount => throw _privateConstructorUsedError;
  String get beforePrice => throw _privateConstructorUsedError;
  int get pricePay => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PayStateCopyWith<PayState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayStateCopyWith<$Res> {
  factory $PayStateCopyWith(PayState value, $Res Function(PayState) then) =
      _$PayStateCopyWithImpl<$Res, PayState>;
  @useResult
  $Res call(
      {int current,
      PayStatus payStatus,
      String allPrice,
      List<CartModel> cart,
      String? priceDisCount,
      String beforePrice,
      int pricePay,
      String address});
}

/// @nodoc
class _$PayStateCopyWithImpl<$Res, $Val extends PayState>
    implements $PayStateCopyWith<$Res> {
  _$PayStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? payStatus = null,
    Object? allPrice = null,
    Object? cart = null,
    Object? priceDisCount = freezed,
    Object? beforePrice = null,
    Object? pricePay = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      payStatus: null == payStatus
          ? _value.payStatus
          : payStatus // ignore: cast_nullable_to_non_nullable
              as PayStatus,
      allPrice: null == allPrice
          ? _value.allPrice
          : allPrice // ignore: cast_nullable_to_non_nullable
              as String,
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
      priceDisCount: freezed == priceDisCount
          ? _value.priceDisCount
          : priceDisCount // ignore: cast_nullable_to_non_nullable
              as String?,
      beforePrice: null == beforePrice
          ? _value.beforePrice
          : beforePrice // ignore: cast_nullable_to_non_nullable
              as String,
      pricePay: null == pricePay
          ? _value.pricePay
          : pricePay // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PayStateCopyWith<$Res> implements $PayStateCopyWith<$Res> {
  factory _$$_PayStateCopyWith(
          _$_PayState value, $Res Function(_$_PayState) then) =
      __$$_PayStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int current,
      PayStatus payStatus,
      String allPrice,
      List<CartModel> cart,
      String? priceDisCount,
      String beforePrice,
      int pricePay,
      String address});
}

/// @nodoc
class __$$_PayStateCopyWithImpl<$Res>
    extends _$PayStateCopyWithImpl<$Res, _$_PayState>
    implements _$$_PayStateCopyWith<$Res> {
  __$$_PayStateCopyWithImpl(
      _$_PayState _value, $Res Function(_$_PayState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? payStatus = null,
    Object? allPrice = null,
    Object? cart = null,
    Object? priceDisCount = freezed,
    Object? beforePrice = null,
    Object? pricePay = null,
    Object? address = null,
  }) {
    return _then(_$_PayState(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      payStatus: null == payStatus
          ? _value.payStatus
          : payStatus // ignore: cast_nullable_to_non_nullable
              as PayStatus,
      allPrice: null == allPrice
          ? _value.allPrice
          : allPrice // ignore: cast_nullable_to_non_nullable
              as String,
      cart: null == cart
          ? _value._cart
          : cart // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
      priceDisCount: freezed == priceDisCount
          ? _value.priceDisCount
          : priceDisCount // ignore: cast_nullable_to_non_nullable
              as String?,
      beforePrice: null == beforePrice
          ? _value.beforePrice
          : beforePrice // ignore: cast_nullable_to_non_nullable
              as String,
      pricePay: null == pricePay
          ? _value.pricePay
          : pricePay // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PayState extends _PayState {
  _$_PayState(
      {required this.current,
      required this.payStatus,
      required this.allPrice,
      required final List<CartModel> cart,
      required this.priceDisCount,
      required this.beforePrice,
      required this.pricePay,
      required this.address})
      : _cart = cart,
        super._();

  @override
  final int current;
  @override
  final PayStatus payStatus;
  @override
  final String allPrice;
  final List<CartModel> _cart;
  @override
  List<CartModel> get cart {
    if (_cart is EqualUnmodifiableListView) return _cart;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cart);
  }

  @override
  final String? priceDisCount;
  @override
  final String beforePrice;
  @override
  final int pricePay;
  @override
  final String address;

  @override
  String toString() {
    return 'PayState(current: $current, payStatus: $payStatus, allPrice: $allPrice, cart: $cart, priceDisCount: $priceDisCount, beforePrice: $beforePrice, pricePay: $pricePay, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PayState &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.payStatus, payStatus) ||
                other.payStatus == payStatus) &&
            (identical(other.allPrice, allPrice) ||
                other.allPrice == allPrice) &&
            const DeepCollectionEquality().equals(other._cart, _cart) &&
            (identical(other.priceDisCount, priceDisCount) ||
                other.priceDisCount == priceDisCount) &&
            (identical(other.beforePrice, beforePrice) ||
                other.beforePrice == beforePrice) &&
            (identical(other.pricePay, pricePay) ||
                other.pricePay == pricePay) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      current,
      payStatus,
      allPrice,
      const DeepCollectionEquality().hash(_cart),
      priceDisCount,
      beforePrice,
      pricePay,
      address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PayStateCopyWith<_$_PayState> get copyWith =>
      __$$_PayStateCopyWithImpl<_$_PayState>(this, _$identity);
}

abstract class _PayState extends PayState {
  factory _PayState(
      {required final int current,
      required final PayStatus payStatus,
      required final String allPrice,
      required final List<CartModel> cart,
      required final String? priceDisCount,
      required final String beforePrice,
      required final int pricePay,
      required final String address}) = _$_PayState;
  _PayState._() : super._();

  @override
  int get current;
  @override
  PayStatus get payStatus;
  @override
  String get allPrice;
  @override
  List<CartModel> get cart;
  @override
  String? get priceDisCount;
  @override
  String get beforePrice;
  @override
  int get pricePay;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$_PayStateCopyWith<_$_PayState> get copyWith =>
      throw _privateConstructorUsedError;
}
