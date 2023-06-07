import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:pet_fit/pages/chat/chat_screen.dart';
import 'package:pet_fit/pages/home/entryPoint/entry_point.dart';
import 'package:pet_fit/pages/home/home_screen.dart';
import 'package:pet_fit/pages/notifications/notifications_screen.dart';
import 'package:pet_fit/pages/profile/help/help_desk_screen.dart';
import 'package:pet_fit/pages/profile/profile_screen.dart';
import 'package:pet_fit/pages/search/search_screen.dart';

import 'rive_model.dart';

class Menu {
  final String title;
  final RiveModel rive;
  final Function? onTap;

  Menu({required this.title, required this.rive, required this.onTap});
}

List<Menu> sidebarMenus = [
  Menu(
    title: "Ana Sayfa",
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "HOME",
        stateMachineName: "HOME_interactivity"),
    onTap: (BuildContext context) {
      Navigator.pushNamed(context, HomeScreen.routeName);
    },
  ),
  Menu(
    title: "Evcil Hayvanlarım",
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "LIKE/STAR",
        stateMachineName: "STAR_Interactivity"),
    onTap: () {},
  ),
  Menu(
    title: "Yardım",
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "CHAT",
        stateMachineName: "CHAT_Interactivity"),
    onTap: (BuildContext context) {
      Navigator.pushNamed(context, HelpScreen.routeName);
    },
  ),
];
List<Menu> sidebarMenus2 = [
  Menu(
    title: "Aktivite Geçmişi",
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "TIMER",
        stateMachineName: "TIMER_Interactivity"),
    onTap: (BuildContext context) {
      Navigator.pushNamed(context, SearchScreen.routeName);
    },
  ),
  Menu(
    title: "Bildirimler",
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "BELL",
        stateMachineName: "BELL_Interactivity"),
    onTap: (BuildContext context) {
      Navigator.pushNamed(context, NotificationScreen.routeName);
    },
  ),
];

List<Menu> bottomNavItems = [
  Menu(
    title: "Home",
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "HOME",
        stateMachineName: "HOME_interactivity"),
    onTap: (BuildContext context) {
      Navigator.pushNamed(context, EntryPoint.routeName);
    },
  ),
  Menu(
    title: "Aktivite Geçmişi",
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "TIMER",
        stateMachineName: "TIMER_Interactivity"),
    onTap: (BuildContext context) {
      Navigator.pushNamed(context, SearchScreen.routeName);
    },
  ),
  Menu(
    title: "Sohbet",
    rive: RiveModel(
      src: "assets/RiveAssets/icons.riv",
      artboard: "CHAT",
      stateMachineName: "CHAT_Interactivity",
    ),
    onTap: (BuildContext context) {
      Navigator.pushNamed(context, ChatScreen.routeName);
    },
  ),
  Menu(
    title: "Profile",
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "USER",
        stateMachineName: "USER_Interactivity"),
    onTap: (BuildContext context) {
      Navigator.pushNamed(context, ProfileScreen.routeName);
    },
  ),
];
