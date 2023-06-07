import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:pet_fit/pages/navigation/navigation_service.dart';
import 'package:pet_fit/pages/navigation/no_internet_view.dart';
import 'package:pet_fit/pages/sign_in/components/sign_form.dart';
import 'package:pet_fit/parslib/models/network/network_manager.dart';
import 'application_constants.dart';

abstract class BaseViewModel extends ChangeNotifier {
  late BuildContext context;

  ApplicationConstants get appConstants => ApplicationConstants.instance;
  NetworkManager get networkManager => NetworkManager.instance;

  void setState() {
    notifyListeners();
  }

  void setContext(BuildContext context) {
    this.context = context;
  }

  void init() {}

  void goToOnBoard() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      NavigationService.pushNamed(SignForm.path);
    } else {
      NavigationService.pushNamed(NoInternetView.path);
    }
  }
}
