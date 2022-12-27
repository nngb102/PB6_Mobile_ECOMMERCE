import 'package:ecommerce/ui/base/base_page.dart';
import 'package:ecommerce/ui/resources/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../injection/injector.dart';
import 'bloc/cart_presenter.dart';
import 'components/body.dart';
import 'components/checkout_cart.dart';

class Cart extends BasePage {
  const Cart({
    Key? key,
  }) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  final _cartPresenter = injector.get<CartPresenter>();
  @override
  void initState() {
    _cartPresenter.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        toolbarHeight: 45,
        centerTitle: true,
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: AppColors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: const Text(
          'Giỏ Hàng',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: AppColors.black,
          ),
        ),
      ),
      body: const Body(),
      bottomNavigationBar: const CheckoutCart(),
    );
  }
}
