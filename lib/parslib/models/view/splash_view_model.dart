import 'dart:async';
import 'package:pet_fit/parslib/components/v1/app_extensions.dart';
import 'package:pet_fit/parslib/models/manager/connectivity_manager.dart';
import 'package:provider/provider.dart';
import 'base_view_model.dart';

class SplashViewModel extends BaseViewModel {
  @override
  void init() {
    Provider.of<ConnectivityManager>(context, listen: false)
        .startConnectivity();
    Timer(context.durationNormal, goToOnBoard);
  }
}
