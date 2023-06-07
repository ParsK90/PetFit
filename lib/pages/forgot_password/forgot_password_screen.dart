import 'package:flutter/material.dart';
import 'components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";

  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> type =
        (ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?) ??
            {};
    return Scaffold(
      appBar: AppBar(
        title: const Text("Şifremi Unuttum"),
      ),
      body: Body(type: type["type"] as int?),
    );
  }
}
