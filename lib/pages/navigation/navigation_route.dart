import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show Scaffold;
import 'package:pet_fit/main.dart';
import 'package:pet_fit/pages/navigation/no_internet_view.dart';
import 'package:pet_fit/pages/sign_in/components/sign_form.dart';

class NavigationRoute {
  static Route<CupertinoPageRoute> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MyApp.path:
        return CupertinoPageRoute(builder: (_) => const MyApp());
      case SignForm.path:
        return CupertinoPageRoute(builder: (_) => const SignForm());
      case NoInternetView.path:
        return CupertinoPageRoute(builder: (_) => const NoInternetView());

      default:
        return CupertinoPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Bulunamadı'))),
        );
    }
  }
}
//bu sorun değil