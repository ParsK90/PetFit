import 'package:flutter/material.dart';
import 'package:pet_fit/pages/profile/help/components/body.dart';
import 'package:pet_fit/parslib/constants.dart';

class HelpScreen extends StatelessWidget {
  static String routeName = "/help";

  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: Body(),
    );
  }
}
