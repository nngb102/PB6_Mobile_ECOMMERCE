import 'package:ecommerce/data/model/cart.dart';
import 'package:ecommerce/ui/feature/cart/bloc/cart_presenter.dart';
import 'package:ecommerce/ui/feature/cart/bloc/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../resources/app_colors.dart';
import 'cart_counter.dart';
import '../../../widget/choose.dart';

class ItemCart extends StatelessWidget {
  const ItemCart({
    Key? key,
    required this.product,
    required this.idStore,
    required this.idItem,
    required this.cartPresenter,
  }) : super(key: key);

  final ProductCart product;
  final int idStore, idItem;
  final CartPresenter cartPresenter;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 100,
      margin: const EdgeInsets.only(bottom: 20, left: 10),
      width: size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<CartPresenter, CartState>(
            bloc: cartPresenter,
            builder: (context, state) => Choose(
              function: (bool? value) {
                cartPresenter.isCheck(idStore, idItem);
              },
              isChecked: state.isCart[idStore].isProduct![idItem],
            ),
          ),
          Image.network(
            product.image,
            height: 90,
            width: 90,
            fit: BoxFit.fill,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.name,
                  maxLines: 1,
                  style: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 20,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.primary),
                      child: Row(
                        children: [
                          Text(
                            ' Color : ${product.color ?? 'chua co mau'}',
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            ' , Size : ${product.size ?? 'Chua co size'}',
                            style: const TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '${product.price}',
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    CartCounter(
                      cartPresenter: cartPresenter,
                      idItem: idItem,
                      idStore: idStore,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
