import 'package:canapii_app_flutter/screens/page_not_found/page_not_found.dart';
import 'package:flutter/material.dart';
import 'mock_ui.dart';
import 'screens/login/login.dart';
import 'utils/routing_constants.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch(settings.name) {
    case rootRoute:
      return MaterialPageRoute(builder: (context) => const MockUI());
    case loginRoute:
      return MaterialPageRoute(builder: (context) => const Login());
    default:
      return MaterialPageRoute(builder: (context) => PageNotFound(routeName: settings.name));
  }
}