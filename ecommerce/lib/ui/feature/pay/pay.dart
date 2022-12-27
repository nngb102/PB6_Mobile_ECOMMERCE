import 'package:ecommerce/ui/base/base_page.dart';
import 'package:ecommerce/ui/feature/pay/bloc/pay_presenter.dart';
import 'package:ecommerce/ui/feature/pay/bloc/pay_state.dart';
import 'package:ecommerce/ui/feature/pay_success/pay_success.dart';

import 'package:ecommerce/ui/resources/app_colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:momo_vn/momo_vn.dart';

import '../../../data/model/cart.dart';
import '../../../injection/injector.dart';
import 'components/body.dart';
import 'components/bottom_app_bar_pay.dart';

class Pay extends BasePage {
  const Pay({Key? key, required this.listCart}) : super(key: key);
  final List<CartModel> listCart;

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  late MomoVn _momoPay;
  late PaymentResponse _momoPaymentResult;

  @override
  void initState() {
    payPresenter.init(widget.listCart);
    super.initState();
    _momoPay = MomoVn();
    _momoPay.on(MomoVn.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _momoPay.on(MomoVn.EVENT_PAYMENT_ERROR, _handlePaymentError);
  }

  @override
  void dispose() {
    super.dispose();
    _momoPay.clear();
  }

  Future<void> _setState() async {
    if (_momoPaymentResult.isSuccess == true) {
    } else {}
  }

  void _handlePaymentSuccess(PaymentResponse response) {
    setState(() {
      _momoPaymentResult = response;
      _setState();
    });
    Fluttertoast.showToast(
        msg: 'THÀNH CÔNG: ${response.phoneNumber}',
        toastLength: Toast.LENGTH_SHORT);
    Future.delayed(
      const Duration(seconds: 1),
    );
     payPresenter.postOrder();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const PaySuccess(),
      ),
    );
  }

  void _handlePaymentError(PaymentResponse response) {
    setState(() {
      _momoPaymentResult = response;
      _setState();
    });
    Fluttertoast.showToast(
        msg: 'THẤT BẠI: ${response.message}', toastLength: Toast.LENGTH_SHORT);
  }

  final payPresenter = injector.get<PayPresenter>();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PayPresenter, PayState>(
      bloc: payPresenter,
      builder: (context, state) => Scaffold(
        backgroundColor: AppColors.primary,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.white,
          elevation: 0,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_sharp,
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
            'Thanh Toán',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
        body: Body(
          payPresenter: payPresenter,
        ),
        bottomNavigationBar: BottomAppBarPay(
          payPresenter: payPresenter,
          onTap: () {
            if (state.current == 2) {
              final options = MomoPaymentInfo(
                  merchantName: 'Test',
                  appScheme: 'MOMOZ7NU20220930',
                  merchantCode: 'MOMOZ7NU20220930',
                  partnerCode: 'MOMOZ7NU20220930',
                  amount: state.pricePay,
                  orderId: '12321312',
                  orderLabel: 'Thanh Toán Tiền',
                  merchantNameLabel: 'HLGD',
                  fee: 10,
                  description: 'Thanh Toán Tiền',
                  username: "Bao",
                  partner: 'merchant',
                  extra: '{"key1":"value1","key2":"value2"}',
                  isTestMode: true);
              try {
                _momoPay.open(options);
              } catch (e) {
                debugPrint(e.toString());
              }
            } else {
              null;
            }
          },
        ),
      ),
    );
  }
}
