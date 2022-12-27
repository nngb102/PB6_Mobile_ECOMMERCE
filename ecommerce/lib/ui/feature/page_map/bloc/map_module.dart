import 'package:ecommerce/ui/feature/pay/bloc/pay_presenter.dart';

import '../../../../injection/injector.dart';
import 'map_presenter.dart';

class MapModule {
  static Future<void> inject() async {
    injector.registerFactory<MapPresenter>(
      () => MapPresenter(injector.get<PayPresenter>()),
    );
  }
}
