import 'package:flutter/material.dart';
import 'package:pet_fit/pages/home/entryPoint/components/btm_nav_bar.dart';
import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Profile"),
      ),
      body: const Body(),
      bottomNavigationBar: const BtmNavBar(),
    );
  }
}
