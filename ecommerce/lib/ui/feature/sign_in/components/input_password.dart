import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widget/text_field_input.dart';
import '../bloc/sign_in_presenter.dart';
import '../bloc/sign_in_state.dart';

class InputPassword extends StatelessWidget {
  const InputPassword({
    Key? key,
    required this.signInPresenter,
  }) : super(key: key);
  final SignInPresenter signInPresenter;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInPresenter, SignInState>(
      bloc: signInPresenter,
      builder: (context, state) => TextFieldInput(
        hintText: 'Password',
        isPass: true,
        textEditingController: signInPresenter.textEditingControllerPassword,
        textInputType: TextInputType.emailAddress,
        onChanged: (value) {
          signInPresenter.inputPassword(value);
        },
      ),
    );
  }
}
