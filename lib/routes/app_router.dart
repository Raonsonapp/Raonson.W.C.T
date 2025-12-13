import 'package:flutter/material.dart';
import '../screens/chatgpt_screen.dart';
import '../screens/kingai_screen.dart';

class AppRoutes {
  static const chatGPT = '/chatgpt';
  static const kingAI = '/kingai';
}

class AppRouter {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.chatGPT:
        return MaterialPageRoute(builder: (_) => const ChatGPTScreen());
      case AppRoutes.kingAI:
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
