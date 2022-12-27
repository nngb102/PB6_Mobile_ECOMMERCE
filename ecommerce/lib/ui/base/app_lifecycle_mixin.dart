// import 'dart:async';

// import 'package:flutter/material.dart';

// // import '../../injection/injector.dart';
// // import '../../utilities/helpers/app_helper/app_helper.dart';
// // import '../../utilities/helpers/logger_helper/logger_helper.dart';

// mixin AppLifecycleMixin<T extends StatefulWidget> on State<T> {
//   // final loggerHelper = injector.get<LoggerHelper>();
//   // final appHelper = injector.get<AppHelper>();

//   late StreamSubscription<AppLifecycleState> _appLifecycleState;

//   @override
//   void initState() {
//     super.initState();

//     _appLifecycleState = appHelper.appLifeCycleState.asBroadcastStream().listen(
//       (state) {
//         switch (state) {
//           case AppLifecycleState.inactive:
//             onInactive();
//             break;
//           case AppLifecycleState.paused:
//             onPaused();
//             break;
//           case AppLifecycleState.resumed:
//             onResumed();
//             break;
//           case AppLifecycleState.detached:
//             onDetached();
//             break;
//         }
//       },
//     );
//   }

//   @override
//   void dispose() {
//     _appLifecycleState.cancel();
//     super.dispose();
//   }

//   @mustCallSuper
//   void onInactive() {
//     loggerHelper.info('[$runtimeType] did change app lifecycle state '
//         '[AppLifecycleState.inactive]');
//   }

//   @mustCallSuper
//   void onPaused() {
//     loggerHelper.info('[$runtimeType] did change app lifecycle state '
//         '[AppLifecycleState.paused]');
//   }

//   @mustCallSuper
//   void onResumed() {
//     loggerHelper.info('[$runtimeType] did change app lifecycle state '
//         '[AppLifecycleState.resumed]');
//   }

//   @mustCallSuper
//   void onDetached() {
//     loggerHelper.info('[$runtimeType] did change app lifecycle state '
//         '[AppLifecycleState.detached]');
//   }
// }
