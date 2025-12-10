import 'package:flutter/material.dart';
import '../services/king_ai_service.dart';

class KingAIScreen extends StatefulWidget {
  @override
  _KingAIScreenState createState() => _KingAIScreenState();
}

class _KingAIScreenState extends State<KingAIScreen> {
  final KingAIService _svc = KingAIService();
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('KING AI'), backgroundColor: Colors.black),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(children: [
          ElevatedButton(onPressed: () async {
            final url = await _svc.createApp('MyProject', 'apk');
            setState(() { _result = url; });
          }, child: Text('Create APK (simulated)')),
          SizedBox(height: 12),
          SelectableText(_result, style: TextStyle(color: Colors.white)),
        ]),
      ),
    );
  }
}