import 'package:ecommerce/ui/feature/pay/bloc/pay_presenter.dart';
import 'package:ecommerce/ui/feature/pay/bloc/pay_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../resources/app_colors.dart';
import '../../../widget/button_common.dart';
import '../../page_discount/page_discount.dart';

class BottomAppBarPay extends StatelessWidget {
  const BottomAppBarPay({
    Key? key,
    required this.payPresenter,
    required this.onTap,
  }) : super(key: key);
  final PayPresenter payPresenter;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PayPresenter, PayState>(
      bloc: payPresenter,
      builder: (context, state) => Container(
        height: 140,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        color: AppColors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Tổng'),
                Text(
                  '${state.allPrice} VND',
                  style: const TextStyle(
                    color: AppColors.red,
                  ),
                ),
              ],
            ),
            ButtonCommon(
              txt: 'Đặt Hàng',
              width: MediaQuery.of(context).size.width,
              onTap: onTap,
              colorButton: AppColors.red,
              colorText: AppColors.white,
            ),
          ],
        ),
      ),
    );
  }
}
