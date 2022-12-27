import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/model/cart.dart';

part 'pay_state.freezed.dart';

enum PayStatus { init, inProgress, success }

@freezed
class PayState with _$PayState {
  factory PayState({
    required int current,
    required PayStatus payStatus,
    required String allPrice,
    required List<CartModel> cart,
    required String? priceDisCount,
    required String beforePrice,
    required int pricePay,
    required String address,
  }) = _PayState;

  const PayState._();

  factory PayState.initial() => PayState(
        current: -1,
        payStatus: PayStatus.init,
        cart: [],
        allPrice: '0',
        pricePay: 0, address: '', beforePrice: '', priceDisCount: null,
      );
}
