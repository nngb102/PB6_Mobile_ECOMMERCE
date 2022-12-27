import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../resources/app_colors.dart';
import '../../../widget/text_field_input.dart';
import '../bloc/sign_in_presenter.dart';
import 'button_log_in.dart';
import 'input_email.dart';
import 'input_password.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required SignInPresenter signInPresenter,
  }) : _signInPresenter = signInPresenter, super(key: key);

  final SignInPresenter _signInPresenter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 30,
        right: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                'Login Account',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                width: 10,
              ),
              SvgPicture.asset('assets/icons/User.svg'),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Hello , welcome back to our account !',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 50,
          ),
          Form(
            child: Column(
              children: [
                InputEmail(signInPresenter: _signInPresenter,),
                const SizedBox(
                  height: 20,
                ),
                InputPassword(signInPresenter: _signInPresenter,),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: const [
                    Spacer(),
                    Text(
                      'Forgot Password ?',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: AppColors.blue,
                      ),
                    ),
                  ],
                ),
                 ButtonLogin(signInPresenter:_signInPresenter,),
                const SizedBox(height: 30),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                          '-----------------  Or sign up with  -----------------'),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/icons/google logo.svg'),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Google',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Not register yet ? ',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'Create Account',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}




