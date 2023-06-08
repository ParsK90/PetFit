import 'package:flutter/widgets.dart';
import 'package:pet_fit/pages/add_pet/add_pet_screen.dart';
import 'package:pet_fit/pages/add_pet/add_photo_screen.dart';
import 'package:pet_fit/pages/add_pet/categorySelect.dart';
import 'package:pet_fit/pages/chat/chat_screen.dart';
import 'package:pet_fit/pages/complete_profile/complete_profile_screen.dart';
import 'package:pet_fit/pages/forgot_password/forgot_password_screen.dart';
import 'package:pet_fit/pages/home/entryPoint/entry_point.dart';
import 'package:pet_fit/pages/home/home_screen.dart';
import 'package:pet_fit/pages/notifications/notifications_screen.dart';
import 'package:pet_fit/pages/otp/otp_screen.dart';
import 'package:pet_fit/pages/profile/account/account_screen.dart';
import 'package:pet_fit/pages/profile/help/help_desk_screen.dart';
import 'package:pet_fit/pages/profile/profile_screen.dart';
import 'package:pet_fit/pages/profile/settings/settings.dart';
import 'package:pet_fit/pages/search/search_screen.dart';
import 'package:pet_fit/pages/sign_in/sign_in_screen.dart';
import 'package:pet_fit/pages/sign_up/sign_up_screen.dart';
import 'package:pet_fit/pages/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  ChatScreen.routeName: (context) => const ChatScreen(),
  HelpScreen.routeName: (context) => const HelpScreen(),
  EntryPoint.routeName: (context) => const EntryPoint(),
  SearchScreen.routeName: (context) => const SearchScreen(),
  SettingsScreen.routeName: (context) => const SettingsScreen(),
  AccountScreen.routeName: (context) => const AccountScreen(),
  NotificationScreen.routeName: (context) => const NotificationScreen(),
  AddPhotoPetScreen.routeName: (context) => const AddPhotoPetScreen(),
  CategorySelectScreen.routeName: (context) => const CategorySelectScreen(),
  AddPetScreen.routeName: (context) => const AddPetScreen(),
};
