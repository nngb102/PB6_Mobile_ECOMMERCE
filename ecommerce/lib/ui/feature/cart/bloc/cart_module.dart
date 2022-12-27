import 'package:ecommerce/ui/feature/detail/bloc/detail_presenter.dart';

import '../../../../injection/injector.dart';
import 'cart_presenter.dart';

class CartModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<CartPresenter>(
        () => CartPresenter(injector.get<DetailPresenter>().state));
  }
}
