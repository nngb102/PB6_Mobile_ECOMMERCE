import '../../../../injection/injector.dart';
import 'detail_presenter.dart';

class DetailModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<DetailPresenter>(
      () => DetailPresenter(),
    );
  }
}
