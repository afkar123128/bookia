import 'package:bookia/core/utils/themes.dart';
import 'package:bookia/feature/intro/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
            debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      // ignore: unnecessary_const
      home:  const splash_view()
    );
  }
}
