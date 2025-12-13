import 'package:flutter/material.dart';
import '../screens/chatgpt_screen.dart';
import '../screens/kingai_screen.dart';

class AppRouter {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case '/chatgpt':
        return MaterialPageRoute(builder: (_) => const ChatGPTScreen());
      case '/kingai':
        return MaterialPageRoute(builder: (_) => const KingAIScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text("Route not found")),
          ),
        );
    }
  }
}
