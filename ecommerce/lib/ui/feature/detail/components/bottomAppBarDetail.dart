import 'package:ecommerce/data/model/product.dart';
import 'package:ecommerce/injection/injector.dart';
import 'package:ecommerce/ui/feature/cart/cart.dart';
import 'package:ecommerce/ui/feature/detail/bloc/detail_presenter.dart';
import 'package:ecommerce/ui/feature/pay/pay.dart';
import 'package:ecommerce/ui/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../widget/button_common.dart';
import '../../../widget/icon_common.dart';

class BottomAppBarDetail extends StatelessWidget {
  const BottomAppBarDetail({
    Key? key,
    required this.listProduct,
  }) : super(key: key);
  final List<Product> listProduct;

  @override
  Widget build(BuildContext context) {
    final detailPresenter = injector.get<DetailPresenter>();
    return BottomAppBar(
      child: Container(
        height: 65,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconCommon(
              icons: const Icon(Icons.store_outlined),
              txtIcon: 'Cửa Hàng',
              onTap: () {},
            ),
            IconCommon(
              icons: const Icon(Icons.message_outlined),
              txtIcon: 'Trò Chuyện',
              onTap: () {},
            ),
            ButtonCommon(
              colorButton: AppColors.white,
              colorText: AppColors.red,
              txt: 'Thêm vào Giỏ Hàng',
              onTap: () {
                if (detailPresenter.state.color != null &&
                    detailPresenter.state.size != null) {
                  detailPresenter.addToCart(listProduct[0]);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Cart(),
                    ),
                  );
                } else {
                  Fluttertoast.showToast(
                      msg: 'Cần phải chọn màu hoặc size',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      fontSize: 16);
                }
              },
            ),
            ButtonCommon(
              colorButton: AppColors.red,
              colorText: AppColors.white,
              txt: 'Mua',
              onTap: () {
                if (detailPresenter.state.color != null &&
                    detailPresenter.state.size != null) {
                  detailPresenter.buy(listProduct[0], 'AA');

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Pay(
                        listCart: detailPresenter.state.pay,
                      ),
                    ),
                  );
                } else {
                  Fluttertoast.showToast(
                      msg: 'Cần phải chọn màu hoặc size',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      fontSize: 16);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
