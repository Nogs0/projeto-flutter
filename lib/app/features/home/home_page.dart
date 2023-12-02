import 'package:flutter/material.dart';
import 'package:projeto_seminarios/app/core/constants/app_routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MyAccount',
          locale: Locale('pt', 'BR'),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.login_outlined),
          )
        ],
      ),
      body: Container(),
    );
  }
}
