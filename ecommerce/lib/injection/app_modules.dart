// import 'package:shared_preferences/shared_preferences.dart';

import './injector.dart';
// import '../data/repositories/auth_preferences_repository_implement.dart';
// import '../data/repositories/device_repository_implement.dart';
// import '../data/repositories/room_repository_implement.dart';
// import '../data/repositories/user_repository_implement.dart';
// import '../data/services/network_services/auth_service.dart';
// import '../data/services/network_services/realtime_service.dart';
// import '../data/services/network_services/storage_service.dart';
// import '../domain/repositories/auth_preferences_repository.dart';
// import '../domain/repositories/device_repository.dart';
// import '../domain/repositories/room_repository.dart';
// import '../domain/repositories/user_repository.dart';
// import '../domain/use_cases/device/get_list_device_use_case.dart';
// import '../domain/use_cases/device/update_state_device_use_case.dart';
// import '../domain/use_cases/room/add_room_use_case.dart';
// import '../domain/use_cases/user/clear_auth_preferences_use_case.dart';
// import '../domain/use_cases/user/get_access_token_use_case.dart';
// import '../domain/use_cases/user/get_account_use_case.dart';
// import '../domain/use_cases/user/login_use_case.dart';
// import '../domain/use_cases/user/register_use_case.dart';
// import '../domain/use_cases/user/save_access_token_use_case.dart';
// import '../domain/use_cases/user/up_image_use_case.dart';
// import '../domain/use_cases/user/update_account_use_case.dart';
import '../utilities/helpers/app_helper/app_flavor_helper.dart';
import '../utilities/helpers/app_helper/app_helper.dart';
import '../utilities/helpers/dialog_helper/loading_full_screen_helper.dart';
import '../utilities/helpers/error_helper/error_helper.dart';
import '../utilities/helpers/logger_helper/logger_helper.dart';
import '../utilities/helpers/validator_helper/validator_helper.dart';

class AppModules {
  static Future<void> inject() async {
    // Share Preferences
    // final _sharedPreferences = await SharedPreferences.getInstance();
    //Auth service

    // injector.registerLazySingleton<AuthService>(
    //   () => AuthService(),
    // );

    // //realtime service
    // injector.registerLazySingleton<RealtimeService>(
    //   () => RealtimeService(),
    // );

    // //storage service
    // injector.registerLazySingleton<StorageService>(
    //   () => StorageService(),
    // );

    //Helpers
    injector.registerLazySingleton<LoggerHelper>(
      () => LoggerHelper(
        isEnabled: injector.get<AppFlavor>().isDevelopment,
      ),
    );

    injector.registerLazySingleton<ErrorHelper>(
      () => ErrorHelper(),
    );

    injector.registerLazySingleton<ValidatorHelper>(
      () => ValidatorHelper(),
    );

    injector.registerLazySingleton<AppHelper>(
      () => AppHelper(),
    );

    injector.registerLazySingleton<LoadingFullScreenHelper>(
      () => LoadingFullScreenHelper(),
    );

    //user case
    // injector.registerLazySingleton<UpdateStateDeviceUseCase>(
    //   () => UpdateStateDeviceUseCase(),
    // );
    // injector.registerLazySingleton<AddRoomUseCase>(
    //   () => AddRoomUseCase(),
    // );

    // injector.registerLazySingleton<RegisterUseCase>(
    //   () => RegisterUseCase(),
    // );

    // injector.registerLazySingleton<LoginUseCase>(
    //   () => LoginUseCase(),
    // );

    // injector.registerLazySingleton<GetAccountUseCase>(
    //   () => GetAccountUseCase(),
    // );

    // injector.registerLazySingleton<UpdateAccountUseCase>(
    //   () => UpdateAccountUseCase(),
    // );

    // injector.registerLazySingleton<UpImageUseCase>(
    //   () => UpImageUseCase(),
    // );

    // injector.registerLazySingleton<SaveAccessTokenUseCase>(
    //   () => SaveAccessTokenUseCase(),
    // );

    // injector.registerLazySingleton<GetAccessTokenUseCase>(
    //   () => GetAccessTokenUseCase(),
    // );

    // injector.registerLazySingleton<ClearAuthPreferencesUseCase>(
    //   () => ClearAuthPreferencesUseCase(),
    // );

    // //Repository
    // injector.registerLazySingleton<AuthPreferencesRepository>(
    //   () => AuthPreferencesRepositoryImplement(_sharedPreferences),
    // );

    // injector.registerLazySingleton<UserRepository>(
    //   () => UserRepositoryImplement(
    //     injector.get<AuthService>(),
    //     injector.get<RealtimeService>(),
    //     injector.get<StorageService>(),
    //   ),
    // );

    // injector.registerLazySingleton<DeviceRepository>(
    //   () => DeviceRepositoryImplement(
    //     injector.get<RealtimeService>(),
    //   ),
    // );

    // injector.registerLazySingleton<RoomRepository>(
    //   () => RoomRepositoryImplement(
    //     injector.get<RealtimeService>(),
    //   ),
    // );

    // //device
    // injector.registerLazySingleton<GetListDeviceUseCase>(
    //   () => GetListDeviceUseCase(),
    // );
  }
}
