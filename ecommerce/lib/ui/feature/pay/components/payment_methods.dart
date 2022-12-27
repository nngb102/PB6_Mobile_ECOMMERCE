import 'package:ecommerce/ui/feature/pay/bloc/pay_state.dart';
import 'package:ecommerce/ui/widget/choose.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection/injector.dart';
import '../../../resources/app_colors.dart';
import '../bloc/pay_presenter.dart';

class PayMentMethods extends StatelessWidget {
  const PayMentMethods({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 8,
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.price_change_rounded,
                color: AppColors.red,
              ),
              const SizedBox(width: 8),
              const Text(
                'Phương thức thanh toán',
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const Spacer(),
              const Text(
                'Thanh toán khi nhận hàng',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: Colors.black.withOpacity(0.45),
              )
            ],
          ),
          const MenuPayMent(
            index: 1,
            icon: Icons.payment,
            text: 'Thanh Toán Khi Nhận Hàng',
          ),
          const MenuPayMent(
            index: 2,
            icon: Icons.payments,
            text: 'Thanh Toán Bằng Momo',
          ),
          const MenuPayMent(
            index: 3,
            icon: Icons.payments_outlined,
            text: 'Thanh Toán Quốc Tế',
          ),
        ],
      ),
    );
  }
}

class MenuPayMent extends StatelessWidget {
  const MenuPayMent({
    Key? key,
    required this.text,
    required this.icon,
    required this.index,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final int index;

  @override
  Widget build(BuildContext context) {
    final payPresenter = injector.get<PayPresenter>();
    return BlocBuilder<PayPresenter, PayState>(
      bloc: payPresenter,
      builder: (context, state) => Row(
        children: [
          Icon(
            icon,
            color: AppColors.red,
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 10,
              ),
            ),
          ),
          Choose(
            function: (bool? value) {
              payPresenter.onTapIndex(index);
            },
            isChecked: index == state.current ? true : false,
          ),
        ],
      ),
    );
  }
}
