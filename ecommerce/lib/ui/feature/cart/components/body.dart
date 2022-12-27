import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injection/injector.dart';
import '../bloc/cart_presenter.dart';
import '../bloc/cart_state.dart';
import 'store_cart.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final cartPresenter = injector.get<CartPresenter>();
    return SingleChildScrollView(
      child: BlocBuilder<CartPresenter, CartState>(
        bloc: cartPresenter,
        builder: (context, state) => ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: state.cart.length,
          itemBuilder: (context, index) => Container(
            width: size.width,
            margin: const EdgeInsets.only(top: 10),
            color: const Color(0xFFFAFAFA),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 8,
            ),
            child: StoreCart(
              cartPresenter:cartPresenter,
              idStore: index,
              cartModel: cartPresenter.state.cart[index],
            ),
          ),
        ),
      ),
    );
  }
}
