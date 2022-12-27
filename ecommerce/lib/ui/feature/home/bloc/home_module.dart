import '../../../../injection/injector.dart';
import 'home_presenter.dart';

class HomeModule {
  static Future<void> inject() async {
    injector.registerFactory<HomePresenter>(
      () => HomePresenter(),
    );
  }
}
