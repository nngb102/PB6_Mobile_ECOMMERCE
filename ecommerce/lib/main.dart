// import 'package:ecommerce/ui/feature/detail/detail.dart';
// import 'package:ecommerce/ui/feature/home/home.dart';
// import 'package:ecommerce/ui/feature/pay/pay.dart';
// import 'package:ecommerce/ui/feature/primary/primary.dart';
// import 'package:ecommerce/ui/feature/profile/profile.dart';
// import 'package:ecommerce/ui/feature/sign_in/sign_in.dart';
// import 'package:ecommerce/ui/feature/pay/pay.dart';
// import 'package:ecommerce/ui/feature/primary/primary.dart';
// import 'package:ecommerce/ui/feature/sign_in/sign_in.dart';
import 'package:ecommerce/ui/feature/cart/cart.dart';
import 'package:ecommerce/ui/feature/home/home.dart';
import 'package:ecommerce/ui/feature/pay_success/pay_success.dart';
import 'package:ecommerce/ui/feature/primary/primary.dart';
import 'package:ecommerce/ui/feature/profile/profile.dart';
import 'package:ecommerce/ui/feature/sign_in/sign_in.dart';
import 'package:ecommerce/utilities/helpers/app_helper/app_flavor_helper.dart';
import 'package:flutter/material.dart';

import 'injection/dependencies.dart';
// import 'ui/feature/cart/cart.dart';
import 'ui/feature/detail/detail.dart';
import 'ui/resources/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  mainCommon();
}

Future<void> mainCommon() async {
  // await Firebase.initializeApp();
  await DependencyManager.inject(AppFlavor.development);
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: getAppTheme(Brightness.light),
      // darkTheme: getAppTheme(Brightness.dark),
      home: SignIn(),
    );
  }
}
