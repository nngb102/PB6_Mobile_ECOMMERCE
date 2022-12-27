import 'package:ecommerce/ui/feature/cart/bloc/cart_presenter.dart';
import 'package:ecommerce/ui/feature/cart/bloc/cart_state.dart';
import 'package:ecommerce/ui/feature/page_discount/page_discount.dart';
import 'package:ecommerce/ui/feature/pay/pay.dart';
import 'package:ecommerce/ui/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection/injector.dart';
import '../../../widget/button_common.dart';
import '../../../widget/choose.dart';

class CheckoutCart extends StatelessWidget {
  const CheckoutCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final cartPresenter = injector.get<CartPresenter>();
    return SafeArea(
      child: BlocBuilder<CartPresenter, CartState>(
        bloc: cartPresenter,
        builder: (context, state) => Container(
          height: 140,
          width: size.width,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, -15),
                blurRadius: 20,
                color: const Color(0xFFDADADA).withOpacity(0.15),
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PageDiscount(),
                      ),
                    ),
                    icon: const Icon(
                      Icons.discount,
                      color: AppColors.red,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text('Mã giảm giá')
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    margin: const EdgeInsets.only(right: 5),
                    child: Choose(
                      function: (bool? value) {},
                      isChecked: true,
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      'Chọn Tất Cả ',
                      style: TextStyle(fontSize: 9),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          style: const TextStyle(fontSize: 11),
                          text: "Total:\n",
                          children: [
                            TextSpan(
                              text: "\$${state.allPrice}",
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ButtonCommon(
                          paddingHorizontal: 8,
                          txt: 'Thanh Toán',
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Pay(
                                  listCart: cartPresenter.createCartPay(),
                                ),
                              ),
                            );
                          },
                          colorButton: AppColors.red,
                          colorText: Colors.white)
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
