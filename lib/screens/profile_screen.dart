import 'package:flutter/material.dart';
import '../components/verified_badge_widget.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isVerified = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile'), backgroundColor: Colors.black),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(radius: 36, backgroundColor: Colors.grey),
                SizedBox(width: 10),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('User Name', style: TextStyle(color: Colors.white, fontSize: 18)),
                  VerifiedBadgeWidget(isVerified: isVerified),
                ]),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => setState(() => isVerified = !isVerified),
              child: Text(isVerified ? 'Remove Verified (demo)' : 'Get Verified (demo)'),
            ),
          ],
        ),
      ),
    );
  }
}