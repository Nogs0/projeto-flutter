import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:projeto_seminarios/app/core/constants/app_assets.dart';
import 'package:projeto_seminarios/app/core/constants/app_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppAssets.logo)
              .animate()
              .fade(begin: 0, end: 1, duration: 3.seconds)
              .shake(hz: 4, duration: 1.seconds, delay: 3.seconds)
              .flipH(begin: 0, end: 2, curve: Curves.bounceIn, duration: 2.seconds, delay: 1.seconds)
              .animate(onComplete: (controller) => controller.repeat(reverse: true))
              .shimmer(delay: 2.seconds),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.login);
              },
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.amber)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.login),
                  SizedBox(width: 10),
                  Text('ENTRAR', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
