import 'package:flutter/material.dart';
import 'routes/app_router.dart';

void main() {
  runApp(const RaonsonApp());
}

class RaonsonApp extends StatelessWidget {
  const RaonsonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Raonson',
      onGenerateRoute: AppRouter.generate,
      initialRoute: '/chatgpt',
    );
  }
}
