import 'package:ecommerce/ui/feature/cart/bloc/cart_state.dart';
import 'package:ecommerce/ui/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/cart_presenter.dart';

class CartCounter extends StatelessWidget {
  const CartCounter({
    required this.idItem,
    required this.idStore,
    Key? key,
    required this.cartPresenter,
  }) : super(key: key);

  final int idStore, idItem;
  final CartPresenter cartPresenter;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartPresenter, CartState>(
      bloc: cartPresenter,
      builder: (context, state) => Row(
        children: <Widget>[
          buildOutlineButton(
            icon: Icons.remove,
            press: () => cartPresenter.onReduceAmount(idStore, idItem),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              '${state.cart[idStore].itemProduct[idItem].amount}',
              style: const TextStyle(fontSize: 14),
            ),
          ),
          buildOutlineButton(
            icon: Icons.add,
            press: () => cartPresenter.onAddAmount(idStore, idItem),
          ),
        ],
      ),
    );
  }

  SizedBox buildOutlineButton(
      {required IconData icon, required Function() press}) {
    return SizedBox(
      width: 20,
      height: 20,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
        onPressed: press,
        child: Icon(
          icon,
          size: 13,
          color: AppColors.black,
        ),
      ),
    );
  }
}
