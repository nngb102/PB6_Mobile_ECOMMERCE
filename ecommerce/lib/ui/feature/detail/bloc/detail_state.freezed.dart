// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailState {
  int get currentSize => throw _privateConstructorUsedError;
  int get currentColor => throw _privateConstructorUsedError;
  List<CartModel> get cart => throw _privateConstructorUsedError;
  List<CartModel> get pay => throw _privateConstructorUsedError;
  DetailStatus get detailStatus => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;
  Product get product => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailStateCopyWith<DetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res, DetailState>;
  @useResult
  $Res call(
      {int currentSize,
      int currentColor,
      List<CartModel> cart,
      List<CartModel> pay,
      DetailStatus detailStatus,
      String? color,
      String? size,
      Product product});
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res, $Val extends DetailState>
    implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentSize = null,
    Object? currentColor = null,
    Object? cart = null,
    Object? pay = null,
    Object? detailStatus = null,
    Object? color = freezed,
    Object? size = freezed,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      currentSize: null == currentSize
          ? _value.currentSize
          : currentSize // ignore: cast_nullable_to_non_nullable
              as int,
      currentColor: null == currentColor
          ? _value.currentColor
          : currentColor // ignore: cast_nullable_to_non_nullable
              as int,
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
      pay: null == pay
          ? _value.pay
          : pay // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
      detailStatus: null == detailStatus
          ? _value.detailStatus
          : detailStatus // ignore: cast_nullable_to_non_nullable
              as DetailStatus,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailStateCopyWith<$Res>
    implements $DetailStateCopyWith<$Res> {
  factory _$$_DetailStateCopyWith(
          _$_DetailState value, $Res Function(_$_DetailState) then) =
      __$$_DetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentSize,
      int currentColor,
      List<CartModel> cart,
      List<CartModel> pay,
      DetailStatus detailStatus,
      String? color,
      String? size,
      Product product});
}

/// @nodoc
class __$$_DetailStateCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$_DetailState>
    implements _$$_DetailStateCopyWith<$Res> {
  __$$_DetailStateCopyWithImpl(
      _$_DetailState _value, $Res Function(_$_DetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentSize = null,
    Object? currentColor = null,
    Object? cart = null,
    Object? pay = null,
    Object? detailStatus = null,
    Object? color = freezed,
    Object? size = freezed,
    Object? product = null,
  }) {
    return _then(_$_DetailState(
      currentSize: null == currentSize
          ? _value.currentSize
          : currentSize // ignore: cast_nullable_to_non_nullable
              as int,
      currentColor: null == currentColor
          ? _value.currentColor
          : currentColor // ignore: cast_nullable_to_non_nullable
              as int,
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
      pay: null == pay
          ? _value.pay
          : pay // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
      detailStatus: null == detailStatus
          ? _value.detailStatus
          : detailStatus // ignore: cast_nullable_to_non_nullable
              as DetailStatus,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$_DetailState extends _DetailState {
  _$_DetailState(
      {required this.currentSize,
      required this.currentColor,
      required this.cart,
      required this.pay,
      required this.detailStatus,
      this.color,
      this.size,
      required this.product})
      : super._();

  @override
  final int currentSize;
  @override
  final int currentColor;
  @override
  final List<CartModel> cart;
  @override
  final List<CartModel> pay;
  @override
  final DetailStatus detailStatus;
  @override
  final String? color;
  @override
  final String? size;
  @override
  final Product product;

  @override
  String toString() {
    return 'DetailState(currentSize: $currentSize, currentColor: $currentColor, cart: $cart, pay: $pay, detailStatus: $detailStatus, color: $color, size: $size, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailState &&
            (identical(other.currentSize, currentSize) ||
                other.currentSize == currentSize) &&
            (identical(other.currentColor, currentColor) ||
                other.currentColor == currentColor) &&
            const DeepCollectionEquality().equals(other.cart, cart) &&
            const DeepCollectionEquality().equals(other.pay, pay) &&
            (identical(other.detailStatus, detailStatus) ||
                other.detailStatus == detailStatus) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentSize,
      currentColor,
      const DeepCollectionEquality().hash(cart),
      const DeepCollectionEquality().hash(pay),
      detailStatus,
      color,
      size,
      product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailStateCopyWith<_$_DetailState> get copyWith =>
      __$$_DetailStateCopyWithImpl<_$_DetailState>(this, _$identity);
}

abstract class _DetailState extends DetailState {
  factory _DetailState(
      {required final int currentSize,
      required final int currentColor,
      required final List<CartModel> cart,
      required final List<CartModel> pay,
      required final DetailStatus detailStatus,
      final String? color,
      final String? size,
      required final Product product}) = _$_DetailState;
  _DetailState._() : super._();

  @override
  int get currentSize;
  @override
  int get currentColor;
  @override
  List<CartModel> get cart;
  @override
  List<CartModel> get pay;
  @override
  DetailStatus get detailStatus;
  @override
  String? get color;
  @override
  String? get size;
  @override
  Product get product;
  @override
  @JsonKey(ignore: true)
  _$$_DetailStateCopyWith<_$_DetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
