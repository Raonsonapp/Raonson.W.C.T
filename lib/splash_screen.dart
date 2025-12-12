import 'package:flutter/material.dart';
import '../routes/app_routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, AppRoutes.home);
    });

    return const Scaffold(
      body: Center(
        child: Text(
          "Loading...",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
