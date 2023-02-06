import 'package:flutter/material.dart';
import 'package:canapii_app_flutter/common/colors.dart' as colors;

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
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login-bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/canapii-logo-white.png',
                      width: 180,
                    ),
                  ],
                )
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: colors.AppColor.darkModeText,
                        fontStyle: FontStyle.italic
                      ),
                      children: const [
                        TextSpan(
                          text: 'For any queries, please contact ',
                        ),
                        TextSpan(
                          text: 'info@canapii.com',
                        )
                      ]
                    ),
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}