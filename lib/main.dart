import 'package:flutter/material.dart';
import 'package:projeto_seminarios/app/core/constants/app_routes.dart';
import 'package:projeto_seminarios/app/features/home/home_page.dart';
import 'package:projeto_seminarios/app/features/login/login_page.dart';
import 'package:projeto_seminarios/app/features/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Puc Minas',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber, foregroundColor: Colors.black, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
            )),
        routes: {
          AppRoutes.splash: (context) => const SplashPage(),
          AppRoutes.login: (context) => const LoginPage(),
          AppRoutes.home: (context) => const HomePage(),
        });
  }
}
