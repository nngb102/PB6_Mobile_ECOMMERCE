import 'package:ecommerce/ui/feature/cart/bloc/cart_presenter.dart';
import 'package:ecommerce/ui/feature/page_map/bloc/map_presenter.dart';
import 'package:ecommerce/ui/feature/pay/bloc/pay_presenter.dart';
import 'package:ecommerce/ui/feature/pay/pay.dart';

import '../../../../injection/injector.dart';
import 'discount_presenter.dart';

class DisCountModule {
  static Future<void> inject() async {
    injector.registerFactory<DisCountPresenter>(
      () => DisCountPresenter(
        injector.get<CartPresenter>(),
        injector.get<PayPresenter>(),
      ),
    );
  }
}
