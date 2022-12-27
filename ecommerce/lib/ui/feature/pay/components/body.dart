import 'package:ecommerce/data/model/cart.dart';
import 'package:ecommerce/data/model/product.dart';
import 'package:ecommerce/ui/feature/pay/bloc/pay_presenter.dart';
import 'package:ecommerce/ui/feature/pay/bloc/pay_state.dart';
import 'package:ecommerce/ui/feature/pay/components/position.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'all_price.dart';
import 'list_order.dart';
import 'payment_methods.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.payPresenter,
  }) : super(key: key);
  final PayPresenter payPresenter;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PayPresenter, PayState>(
      bloc: payPresenter,
      builder: (context, state) => SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Position(text: state.address),
            const SizedBox(
              height: 10,
            ),
            ListOrder(
              payPresenter: payPresenter,
            ),
            const SizedBox(
              height: 1,
            ),
            AllPrice(
              payPresenter: payPresenter,
            ),
            const SizedBox(
              height: 10,
            ),
            const PayMentMethods(),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
