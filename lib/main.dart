import 'package:flutter/material.dart';
import 'common/themes.dart';
import 'mock_ui.dart';
import 'router.dart';

void main() {
  runApp(const CanapiiApp());
}

class CanapiiApp extends StatefulWidget {
  const CanapiiApp({super.key});

  @override
  State<CanapiiApp> createState() => _CanapiiAppState();
}

class _CanapiiAppState extends State<CanapiiApp> {
  @override
  void initState() {
    super.initState();
    canapiiTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Canapii',
      theme: CanapiiTheme.lightMode,
      darkTheme: CanapiiTheme.darkMode,
      themeMode: canapiiTheme.themeMode,
      home: const MockUI(),
      onGenerateRoute: AppRoutes.routes,
    );
  }
}

