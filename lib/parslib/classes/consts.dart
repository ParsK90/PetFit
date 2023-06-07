import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class RouteSettingsX extends RouteSettings {
  final String? displayName;
  const RouteSettingsX({
    this.displayName,
    super.name,
    super.arguments,
  }) : super();
}

class ServiceInfo {
  String servisAdresi = "http://192.168.1.111:90";

  ServiceInfo(this.servisAdresi);
}

String get newGuid => const Uuid().v1();

final navigatorKey = GlobalKey<NavigatorState>();
BuildContext? navigatorContext = navigatorKey.currentState?.context;

ServiceInfo servisBilgisi = ServiceInfo("http://192.168.1.111:90");

enum ScreenMode { mobile, tablet, desktop }

const mGap = SizedBox(height: 4.0);
const sGap = SizedBox(height: 8.0);
const xGap = SizedBox(height: 16.0);
const nGap = SizedBox(height: 24.0);
const bGap = SizedBox(height: 32.0);
const lGap = SizedBox(height: 48.0);

const zenAppBarTitleTheme = TextStyle(
  fontWeight: FontWeight.w600,
  color: Colors.deepPurple,
  fontStyle: FontStyle.italic,
  fontSize: 14,
);

final List<BoxShadow> greyBoxShadow = [
  BoxShadow(
      color: Colors.grey.withOpacity(0.08),
      spreadRadius: 0,
      blurRadius: 4,
      offset: const Offset(0, 4)),
];

final List<BoxShadow> greySoftBoxShadow = [
  BoxShadow(
      color: Colors.grey.withOpacity(0.16),
      spreadRadius: 0,
      blurRadius: 4,
      offset: const Offset(2, 4)),
];
