import 'package:ecommerce/data/model/product.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/model/cart.dart';

part 'detail_state.freezed.dart';

enum DetailStatus { init, inProgress, success }

@Freezed(makeCollectionsUnmodifiable: false)
class DetailState with _$DetailState {
  factory DetailState(
      {required int currentSize,
      required int currentColor,
      required List<CartModel> cart,
      required List<CartModel> pay,
      required DetailStatus detailStatus,
      String? color,
      String? size,
      required Product product}) = _DetailState;

  const DetailState._();

  factory DetailState.initial() => DetailState(
        currentSize: -1,
        currentColor: -1,
        cart: [],
        pay: [],
        detailStatus: DetailStatus.init,
        product: Product(
          id: 1,
          image:
              'https://lzd-img-global.slatic.net/g/p/6cee81e88ef9fcc5890c45298dcd7dde.jpg_720x720q80.jpg_.webp',
          title:
              'Giày là một cái gì đó rất này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ này nọ và này nọ và này nọ',
          name: 'Giay Nike',
          price: 1800000,
          priceBefore: 2000000,
          size: ['M', 'L', 'XL', 'XXL'],
          color: [
            Colors.red,
            Colors.blue,
            Colors.white,
            Colors.black,
          ],
          favorites: 4.1,
        ),
      );
}
