import 'package:ecommerce/data/model/product.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/model/cart.dart';
import '../../../../data/model/home /data.dart';
import 'detail_state.dart';

class DetailPresenter extends Cubit<DetailState> {
  DetailPresenter({
    @visibleForTesting DetailState? state,
  }) : super(
          state ?? DetailState.initial(),
        );
  init(Product product, Data data) {
    final Product productNew;
    productNew = Product(
      color: product.color,
      favorites: product.favorites,
      id: data.id,
      image: data.imageURL,
      name: data.name,
      price: data.price,
      priceBefore: data.initialPrice,
      size: product.size,
      title: product.title,
    );

    emit(state.copyWith(
        product: productNew,
        color: null,
        size: null,
        currentSize: -1,
        currentColor: -1,
        detailStatus: DetailStatus.init));
  }

  void onTapSize(int index, String? size) {
    emit(
      state.copyWith(
          currentSize: index, size: size, detailStatus: DetailStatus.success),
    );
  }

  void onTapColor(int index, Color? color) {
    String colorName;

    if (color == Colors.white) {
      colorName = 'White';
    } else if (color == Colors.blue) {
      colorName = 'Blue';
    } else if (color == Colors.black) {
      colorName = 'Black';
    } else if (color == Colors.red) {
      colorName = 'Red';
    } else {
      colorName = 'Màu không xác định';
    }

    emit(
      state.copyWith(
        currentColor: index,
        color: colorName,
        detailStatus: DetailStatus.success,
      ),
    );
  }

  void addToCart(Product product) {
    CartModel carts;
    var check = false;

    carts = CartModel(nameStore: 'AAAAA', itemProduct: [
      ProductCart(
          id: product.id,
          image: product.image,
          name: product.name,
          price: product.price,
          amount: 1,
          color: state.color.toString(),
          size: state.size)
    ]);
    final listCart = <CartModel>[];

    if (state.cart.isEmpty) {
      state.cart.add(carts);
    } else {
      for (var e in state.cart) {
        {
          if (e.nameStore == carts.nameStore) {
            for (var element in e.itemProduct) {
              if (element.id == carts.itemProduct.first.id &&
                  element.color == carts.itemProduct.first.color &&
                  element.size == carts.itemProduct.first.size) {
                element.amount += 1;
                check = true;
              }
            }
            if (check == false) {
              e.itemProduct.add(carts.itemProduct.first);
            }
          } else {
            state.cart.add(carts);
          }
        }
      }
    }
    listCart.addAll(state.cart);

    emit(
      state.copyWith(
          cart: listCart,
          color: null,
          size: null,
          currentSize: -1,
          currentColor: -1,
          detailStatus: DetailStatus.success),
    );
  }

  void buy(Product product, String nameStore) {
    emit(
      state.copyWith(
        pay: [
          CartModel(
            nameStore: nameStore,
            itemProduct: [
              ProductCart(
                id: product.id,
                image: product.image,
                name: product.name,
                price: product.price,
                amount: 1,
                color: state.color,
                size: state.size,
              )
            ],
          )
        ],
        color: null,
        size: null,
        currentSize: -1,
        currentColor: -1,
        detailStatus: DetailStatus.success,
      ),
    );
  }
}
