import 'package:canapii_app_flutter/utils/routing_constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'common/themes.dart';
import 'router.dart' as router;

void main() {
  runApp(const CanapiiApp());
}

class CanapiiApp extends StatelessWidget {
  const CanapiiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider())
      ],
      child: Builder(
        builder: (context) {
          final themeProvider = Provider.of<ThemeProvider>(context);

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Canapii',
            theme: CanapiiTheme.lightMode,
            darkTheme: CanapiiTheme.darkMode,
            themeMode: themeProvider.themeMode,
            initialRoute: rootRoute,
            onGenerateRoute: router.generateRoute,
          );
        }
      ),
    );
  }
}

