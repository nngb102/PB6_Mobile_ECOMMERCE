import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widget/text_field_input.dart';
import '../bloc/sign_in_presenter.dart';
import '../bloc/sign_in_state.dart';

class InputEmail extends StatelessWidget {
  const InputEmail({
    Key? key,
    required this.signInPresenter,
  }) : super(key: key);
  final SignInPresenter signInPresenter;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInPresenter, SignInState>(
      bloc: signInPresenter,
      buildWhen: ((previous, current) => previous.email != current.email),
      builder: (context, state) => TextFieldInput(
        hintText: 'Email',
        isPass: false,
        textEditingController: signInPresenter.textEditingControllerEmail,
        onChanged: (value) => signInPresenter.inputEmail(value),
        textInputType: TextInputType.emailAddress,
      ),
    );
  }
}
