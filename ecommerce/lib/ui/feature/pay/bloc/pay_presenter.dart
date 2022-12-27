import 'package:dio/dio.dart';
import 'package:ecommerce/data/model/cart.dart';
import 'package:ecommerce/data/model/order/item_order_dtos.dart';
import 'package:ecommerce/data/model/order/order.dart';
import 'package:ecommerce/ui/bloc/ui_presenter.dart';
import 'package:ecommerce/ui/feature/cart/bloc/cart_state.dart';
import 'package:ecommerce/ui/feature/pay/components/list_order.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../data/model/source data/api_client.dart';
import '../../../../utilities/helpers/validator_helper/validator_helper.dart';

import '../../../bloc/ui_state.dart';
import 'pay_state.dart';

class PayPresenter extends Cubit<PayState> {
  PayPresenter({
    required this.cartState,
    required this.uiState,
    @visibleForTesting PayState? state,
  }) : super(
          state ?? PayState.initial(),
        );
  final CartState cartState;
  final UiState uiState;
  ApiClient apiClient = ApiClient(Dio());
  void init(List<CartModel> cart) {
    // cartPay.add(cartState.cart[cartState.isCart.indexOf()]);
    emit(
      state.copyWith(
        cart: cart,
        address: "Đại Học Bách Khoa",
        payStatus: PayStatus.inProgress,
      ),
    );

    var pricePay = _sumPrice();
    emit(
      state.copyWith(
        pricePay: pricePay,
        beforePrice: ValidatorHelper().setupPrice(pricePay),
        allPrice: ValidatorHelper().setupPrice(pricePay),
        payStatus: PayStatus.success,
      ),
    );
  }

  void getAddress(String address) {
    emit(state.copyWith(address: address));
  }

  void onTapIndex(int index) {
    emit(
      state.copyWith(current: index),
    );
  }

  int _sumPrice() {
    int sum = 0;

    for (var i = 0; i < state.cart.length; i++) {
      for (var j = 0; j < state.cart[i].itemProduct.length; j++) {
        sum += (state.cart[i].itemProduct[j].price *
            state.cart[i].itemProduct[j].amount);
      }
    }
    return sum;
  }

  void discount(int discount) {
    double sum;
    sum = (_sumPrice() * (100 - discount)) / 100;
    emit(
      state.copyWith(
        allPrice: ValidatorHelper().setupPrice(
          sum.toInt(),
        ),
        priceDisCount:
            ValidatorHelper().setupPrice((_sumPrice() * discount) ~/ 100),
        pricePay: sum.toInt(),
      ),
    );
  }

  Future<void> postOrder() async {
    final String token = uiState.token!;
    final order = Order(
      message: 'aa',
      address: state.address,
      recipientName: 'Ngo Bao',
      recipientPhone: '0912101998',
      paymentMethodId: 0,
      totalPrice: _sumPrice(),
      itemOrderDtos: [
        ItemOrderDtos(
            productDetailId: 4,
            amount: state.cart.first.itemProduct.first.amount,
            price: state.cart.first.itemProduct.first.price,
            note: 'giao trong tuaanf',
            orderId: 0,
            voucherProductId: 0)
      ],
      id: 0,
      createDate: '2022-12-25T08:28:45.982Z',
      voucherId: 0,
      state: 0,
      userId: 0,
    );
    await apiClient.postOrder(order, 'Bearer $token');
  }
}
