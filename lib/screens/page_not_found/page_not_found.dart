import 'package:flutter/material.dart';
import 'package:canapii_app_flutter/common/colors.dart' as colors;

class PageNotFound extends StatelessWidget {
  final String? routeName;
  const PageNotFound({super.key, this.routeName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.AppColor.primaryColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '404',
                style: TextStyle(
                  color: colors.AppColor.primaryColorContrast,
                  fontSize: 64,
                  fontWeight: FontWeight.w700
                )
              ),
              Text(
                'Page not found',
                style: TextStyle(
                  color: colors.AppColor.primaryColorContrast,
                  fontSize: 24,
                  fontWeight: FontWeight.w600
                )
              ),
              const SizedBox(
                height: 32,
              ),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  foregroundColor: colors.AppColor.primaryColorContrast,
                  padding: const EdgeInsets.all(14)
                ), 
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.home_outlined,
                  color: colors.AppColor.primaryColorContrast,
                ),
                label: Text(
                  'Back to home',
                  style: TextStyle(
                  color: colors.AppColor.primaryColorContrast,
                    fontSize: 16
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