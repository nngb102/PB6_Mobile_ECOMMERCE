import 'package:ecommerce/ui/feature/pay/bloc/pay_presenter.dart';
import 'package:ecommerce/ui/feature/pay/bloc/pay_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../resources/app_colors.dart';

class AllPrice extends StatelessWidget {
  const AllPrice({
    Key? key,
    required this.payPresenter,
  }) : super(key: key);
  final PayPresenter payPresenter;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PayPresenter, PayState>(
      bloc: payPresenter,
      buildWhen: (previous, current) =>
          previous.beforePrice != current.beforePrice ||
          previous.allPrice != current.allPrice ||
          previous.priceDisCount != current.priceDisCount,
      builder: (context, state) => Container(
        color: AppColors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            (state.beforePrice.compareTo(state.allPrice) == 0)
                ? Container()
                : Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Tổng tiền hàng : ',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            '${state.beforePrice} VND',
                            style: const TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Giảm Giá : ',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            '- ${state.priceDisCount} VND',
                            style: const TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Tổng thanh toán : ',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  '${state.allPrice} VND',
                  style: const TextStyle(
                    color: AppColors.red,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
