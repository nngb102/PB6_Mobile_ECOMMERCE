import 'package:ecommerce/ui/feature/home/home.dart';
import 'package:ecommerce/ui/feature/sign_in/bloc/sign_in_presenter.dart';
import 'package:ecommerce/ui/feature/sign_in/bloc/sign_in_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
// ignore: depend_on_referenced_packages

import '../../../resources/app_colors.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({Key? key, required this.signInPresenter})
      : super(key: key);

  final SignInPresenter signInPresenter;

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return BlocBuilder<SignInPresenter, SignInState>(
      bloc: signInPresenter,
      builder: (context, state) => SizedBox(
        width: size,
        height: 200,
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              width: 200.0,
              height: 50.0,
              // ignore: dead_code
              top: state.check ? 150 : 50,
              // ignore: dead_code
              left: size / 2 - 120,
              duration: const Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              child: GestureDetector(
                onTap: () async {
                  if (state.email.isEmpty && state.password.isEmpty) {
                    signInPresenter.check();
                  } else {
                    await signInPresenter.onTapSignIn();
                    if (signInPresenter.state.token == null) {
                      signInPresenter.callbBack(showToast);
                    } else {
                      signInPresenter.addToken();
                      // ignore: use_build_context_synchronously
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home(),
                        ),
                      );
                    }
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 14, 91, 154),
                  ),
                  child: const Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showToast() async {
    

    Fluttertoast.showToast(
        msg: 'Tên đăng nhập hoặc Mật Khẩu không đúng yêu cầu nhập lại',
        toastLength: Toast.LENGTH_SHORT);
    await Future.delayed(
      const Duration(seconds: 1),
    );
  }
}
