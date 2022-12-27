import 'package:ecommerce/ui/bloc/ui_module.dart';
import 'package:ecommerce/ui/feature/cart/bloc/cart_module.dart';
import 'package:ecommerce/ui/feature/home/bloc/home_module.dart';
import 'package:ecommerce/ui/feature/page_map/bloc/map_module.dart';
import 'package:ecommerce/ui/feature/pay/bloc/pay_module.dart';
import 'package:ecommerce/ui/feature/sign_in/bloc/sign_in_module.dart';

import '../ui/feature/detail/bloc/detail_module.dart';
import '../ui/feature/page_discount/bloc/discount_module.dart';
import './app_modules.dart';
import './injector.dart';
// import '../presentation/feature/add_device/config_wifi/bloc/config_wifi_module.dart';
// import '../presentation/feature/add_device/handle_connect/bloc/handle_connect_module.dart';
// import '../presentation/feature/add_room/bloc/add_room_module.dart';
// import '../presentation/feature/create_routines_page.dart/bloc/create_routines_module.dart';
// import '../presentation/feature/edit_profile/bloc/edit_profile_module.dart';
// import '../presentation/feature/home/bloc/home_module.dart';
// import '../presentation/feature/login/bloc/login_module.dart';
// import '../presentation/feature/my_home/bloc/my_home_module.dart';
// import '../presentation/feature/register/bloc/register_module.dart';
// import '../presentation/feature/routines/bloc/routines_module.dart';
// import '../presentation/feature/setting/bloc/setting_module.dart';
// import '../presentation/feature/splash/bloc/splash_module.dart';
import '../utilities/helpers/app_helper/app_flavor_helper.dart';
import '../utilities/helpers/app_helper/navigator_global_context_helper.dart';

class DependencyManager {
  static Future<void> inject(AppFlavor appFlavor) async {
    // App Flavor
    injector.registerLazySingleton<AppFlavor>(() => appFlavor);

    // Inject get current context
    injector.registerLazySingleton<NavigatorGlobalContextHelper>(
      () => NavigatorGlobalContextHelper(),
    );

    // App modules
    await AppModules.inject();

    // Cart modules
    await CartModule.inject();

    // Detail modules
    await DetailModule.inject();

    // Pay modules
    await PayModule.inject();

    // Map modules
    await MapModule.inject();

    // discount
    await DisCountModule.inject();

    //Home
    await HomeModule.inject();

    //SignIn
    await SignInModule.inject();

    // Ui
    await UiModule.inject();

    // //add device
    // await ConfigWifiModule.inject();
    // await HandleConnectModule.inject();

    // //create_routines
    // await CreateRoutinesModule.inject();

    // //edit profile
    // await EditProfileModule.inject();
  }
}
