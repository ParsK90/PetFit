import 'package:flutter/material.dart';
import 'package:pet_fit/pages/splash/components/body.dart';
import 'package:pet_fit/parslib/components/v1/response.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
