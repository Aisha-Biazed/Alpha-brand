import 'package:alpha_brand/Presentation/signUp/widget/sign_up_body.dart';
import 'package:flutter/material.dart';
class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SignUpBodyView(),
    );
  }
}
