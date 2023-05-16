import 'package:alpha_brand/Presentation/signIn/widgets/sign_in_body.dart';
import 'package:flutter/material.dart';
class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF5F5F5),
      body: SignInPage(),
    );
  }
}
