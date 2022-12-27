import 'package:ecommerce/ui/bloc/ui_presenter.dart';

import '../../../../injection/injector.dart';
import 'sign_in_presenter.dart';

class SignInModule {
  static Future<void> inject() async {
    injector.registerFactory<SignInPresenter>(
      () => SignInPresenter(
        uiPresenter: injector.get<UiPresenter>(),
      ),
    );
  }
}
