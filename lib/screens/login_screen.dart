import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ElevatedButton(
          child: Text('Login'),
          onPressed: () {
            Provider.of<AuthProvider>(context, listen: false).login();
          },
        ),
      ),
    );
  }
}