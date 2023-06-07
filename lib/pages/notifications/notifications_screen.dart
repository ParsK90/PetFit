import 'package:flutter/material.dart';
import 'package:pet_fit/pages/notifications/components/body.dart';

class NotificationScreen extends StatelessWidget {
  static String routeName = "/notifications";
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bildirimlerim",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
