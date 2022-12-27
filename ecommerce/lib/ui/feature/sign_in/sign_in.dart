import 'package:ecommerce/ui/base/base_page.dart';
import 'package:ecommerce/ui/resources/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../injection/injector.dart';

import 'bloc/sign_in_presenter.dart';
import 'components/body.dart';

class SignIn extends BasePage {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
  
}

class _SignInState extends State<SignIn> {
  final _signInPresenter = injector.get<SignInPresenter>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: AppColors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
      ),
      body: Body(signInPresenter: _signInPresenter),
    );
  }
}
