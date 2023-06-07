import 'package:expressions/expressions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pet_fit/parslib/classes/consts.dart';

class PetStatic {
  static Future<T?> navigate<T>(String name,
      {BuildContext? context, Object? arguments, bool remove = false}) async {
    context = (context ?? navigatorContext)!;
    if (remove) {
      return Navigator.pushNamedAndRemoveUntil(context, name, (route) => false,
          arguments: arguments);
    }
    return Navigator.pushNamed(context, name, arguments: arguments);
  }

  static ScreenMode getScreenMode(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width > 1440
        ? ScreenMode.desktop
        : width > 680
            ? ScreenMode.tablet
            : ScreenMode.mobile;
  }

  static String getImageUrl(String? image) {
    return "${servisBilgisi.servisAdresi}/$image";
  }

  static String formatMoney(dynamic value,
      {String? format, String? culture, String? prmOndalik}) {
    double data = double.parse((value ?? "0.00").toString());
    data = data.isNaN ? 0.0 : data;
    return NumberFormat((format ?? ",##0.00"), culture ??= "tr-TR")
        .format(data);
  }

  static double inputFormatMoney(dynamic data,
      {String? format, String? prmOndalik}) {
    return double.tryParse(NumberFormat(format ?? "##0.00")
            .format(
                double.tryParse(data.toString().replaceAll(",", ".")) ?? 0.0)
            .toString()) ??
        0.0;
  }

  static double calculateFormatMoney(dynamic data, {String? format}) {
    double result = 0.0;
    try {
      var eval = const ExpressionEvaluator();
      result = double.tryParse(NumberFormat(format ?? "##0.00")
              .format(double.tryParse((eval.eval(
                      Expression.parse(
                          data.toString().replaceAll(",", ".").trim()),
                      {})).toString()) ??
                  0.0)
              .toString()) ??
          0.0;
    } catch (e) {
      result = 0.0;
    }
    return result;
  }

  String formatDatetime(DateTime? data, {String? format, String? culture}) {
    return DateFormat(format ?? "dd.MM.yyyy").format(data ?? DateTime.now());
  }
}
