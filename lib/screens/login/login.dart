import 'package:canapii_app_flutter/screens/shared/auth_layout.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ),
      body: AuthLayout(
        title: '',
        subTitle: '',
        showLogo: true,
        showIcon: false,
        showContact: true,
        form: Container(),
      ),
    );
  }
}