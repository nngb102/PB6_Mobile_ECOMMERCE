import 'package:ecommerce/data/model/home%20/data.dart';
import 'package:ecommerce/data/model/product.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/model/cart.dart';

part 'home_state.freezed.dart';

enum DetailStatus { init, inProgress, success }

@Freezed(makeCollectionsUnmodifiable: false)
class HomeState with _$HomeState {
  factory HomeState({
    required List<Data> productHome,
  }) = _HomeState;

  const HomeState._();

  factory HomeState.initial() => HomeState(
        productHome: [],
      );
}
