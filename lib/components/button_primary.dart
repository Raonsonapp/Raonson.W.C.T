import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const PrimaryButton({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onTap, child: Text(title));
  }
}