import 'package:flutter/material.dart';
import 'package:pet_fit/pages/notifications/notifications_screen.dart';
import 'package:pet_fit/pages/profile/account/account_screen.dart';
import 'package:pet_fit/pages/profile/components/greeting.dart';
import 'package:pet_fit/pages/profile/help/help_desk_screen.dart';
import 'package:pet_fit/pages/profile/settings/settings.dart';
import 'package:pet_fit/pages/sign_in/sign_in_screen.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const ProfilePic(),
          const SizedBox(height: 12),
          const Greeting(),
          const SizedBox(height: 12),
          ProfileMenu(
            text: "Hesabım",
            icon: "assets/icons/User Icon.svg",
            press: () =>
                {Navigator.pushNamed(context, AccountScreen.routeName)},
          ),
          ProfileMenu(
            text: "Bildirimler",
            icon: "assets/icons/Bell.svg",
            press: () =>
                {Navigator.pushNamed(context, NotificationScreen.routeName)},
          ),
          ProfileMenu(
            text: "Ayarlar",
            icon: "assets/icons/Settings.svg",
            press: () =>
                {Navigator.pushNamed(context, SettingsScreen.routeName)},
          ),
          ProfileMenu(
            text: "Yardım Merkezi",
            icon: "assets/icons/Question mark.svg",
            press: () {
              Navigator.pushNamed(context, HelpScreen.routeName);
            },
          ),
          ProfileMenu(
            text: "Çıkış Yap",
            icon: "assets/icons/Log out.svg",
            press: () {
              Navigator.pushNamed(context, SignInScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
