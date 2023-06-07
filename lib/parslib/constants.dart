import 'package:flutter/material.dart';
import 'package:pet_fit/parslib/size_config.dart';

const kPrimaryColor = Color.fromRGBO(110, 8, 222, 1);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color.fromRGBO(110, 8, 222, 1), Color.fromRGBO(110, 8, 222, 1)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);
const kDefaultPadding = 20.0;

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Lütfen mail adresinizi giriniz";
const String kInvalidEmailError = "Lütfen geçerli bir mail adresi giriniz";
const String kInvalidPhoneNumberError =
    "Lütfen geçerli bir telefon numarası giriniz";
const String kPassNullError = "Lütfen şifrenizi giriniz";
const String kShortPassError = "Şifre çok kısa";
const String kMatchPassError = "Şifreler eşleşmiyor";
const String kNamelNullError = "Lütfen adınızı giriniz";
const String kPhoneNumberNullError = "Lütfen telefon numaranızı giriniz";
const String kAddressNullError = "Lütfen adresinizi giriniz";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: const BorderSide(color: kTextColor),
  );
}
