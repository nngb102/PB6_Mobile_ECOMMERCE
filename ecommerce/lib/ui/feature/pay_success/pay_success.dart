import 'package:ecommerce/ui/base/base_page.dart';
import 'package:ecommerce/ui/resources/app_texts.dart';
import 'package:ecommerce/ui/widget/button_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../resources/app_colors.dart';

class PaySuccess extends BasePage {
  const PaySuccess({Key? key}) : super(key: key);

  @override
  State<PaySuccess> createState() => _PaySuccessState();
}

class _PaySuccessState extends State<PaySuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.red,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          height: 230,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          color: AppColors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.task_alt_outlined,
                    color: AppColors.white,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    AppTexts.paySuccess,
                    style: TextStyle(
                      fontSize: 23,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                AppTexts.handlerProduct,
                style: TextStyle(color: AppColors.white),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonCommon(
                    txt: 'Hủy Đơn Hàng',
                    onTap: () {},
                    colorButton: AppColors.red,
                    colorText: AppColors.white,
                    colorBorder: AppColors.white,
                    width: 160,
                  ),
                  ButtonCommon(
                    txt: 'Xem chi tiết đơn hàng',
                    onTap: () {},
                    colorButton: AppColors.red,
                    colorText: AppColors.white,
                    colorBorder: AppColors.white,
                    width: 160,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
