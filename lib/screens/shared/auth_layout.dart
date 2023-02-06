import 'package:flutter/material.dart';
import 'package:canapii_app_flutter/common/colors.dart' as colors;

class AuthLayout extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool showLogo;
  final bool showIcon;
  final IconData? iconName;
  final bool showContact;
  final Widget form;

  const AuthLayout({super.key, required this.title, required this.subTitle, required this.showLogo, required this.showIcon, this.iconName, required this.showContact, required this.form});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                flex: showContact ? 9 : 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    if (showLogo)
                      Image.asset(
                        'assets/images/canapii-logo-white.png',
                        width: 180,
                      ),
                    if (showIcon)
                      Icon(
                        iconName, 
                        size: 36,
                      ),
                    if (title != '')
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    if (subTitle != '')
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    form
                  ],
                )
              ),
              if (showContact)
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
      );
  }
}