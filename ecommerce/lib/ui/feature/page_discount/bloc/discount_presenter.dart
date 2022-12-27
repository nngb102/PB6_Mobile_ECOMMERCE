import 'package:ecommerce/ui/feature/cart/bloc/cart_presenter.dart';
import 'package:ecommerce/ui/feature/pay/bloc/pay_presenter.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'discount_state.dart';

class DisCountPresenter extends Cubit<DisCountState> {
  DisCountPresenter(
    this.cartPresenter,
    this.payPresenter, {
    @visibleForTesting DisCountState? state,
  }) : super(
          state ?? DisCountState.initial(),
        );
  final CartPresenter cartPresenter;
  final PayPresenter payPresenter;
  void onTapIndex(int index) {
    cartPresenter.discount(30);
    payPresenter.discount(30);
    emit(
      state.copyWith(current: index),
    );
  }
}
