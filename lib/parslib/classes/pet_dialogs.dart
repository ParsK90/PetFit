import 'package:flutter/material.dart';
import 'package:pet_fit/parslib/classes/pet_static.dart';
import 'consts.dart';

class PetDialogs {
  static void snackBar(String baslik, String mesaj, int duration,
      {Color? color,
      bool? top,
      double? width,
      BuildContext? context,
      Function()? click}) async {
    EdgeInsets? margin;
    if (top ?? false) {
      margin = EdgeInsets.only(
          bottom:
              MediaQuery.of(navigatorKey.currentState!.context).size.height -
                  128,
          right: 20,
          left: 150);
    } else if (width != null) {
      margin = EdgeInsets.only(
          left: MediaQuery.of(navigatorKey.currentState!.context).size.width -
              width,
          right: 24,
          bottom: 24);
    }
    final snackBar = SnackBar(
      duration: Duration(milliseconds: duration),
      dismissDirection: DismissDirection.startToEnd,
      behavior: SnackBarBehavior.floating,
      margin: margin,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      content: InkWell(
        onTap: click ?? () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              baslik,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const Divider(
              color: Colors.white,
            ),
            if (mesaj.isNotEmpty)
              Text(
                mesaj,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.white),
              ),
          ],
        ),
      ),
    );

    ScaffoldMessenger.of(context ?? navigatorKey.currentState!.context)
        .clearSnackBars();
    await ScaffoldMessenger.of(context ?? navigatorKey.currentState!.context)
        .showSnackBar(snackBar)
        .closed;
  }

  static void clearSnackBar({BuildContext? context}) {
    ScaffoldMessenger.of(context ?? navigatorKey.currentState!.context)
        .clearSnackBars();
  }

  static Future<dynamic> dateTimePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      confirmText: "Seç",
      cancelText: "İptal",
      helpText: "Tarih Seçiniz",
      fieldHintText: "",
      initialDate: DateTime.now(),
      initialDatePickerMode: DatePickerMode.day,
      firstDate: DateTime(2015),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      return picked;
    }
  }

  static Future<int?> showRadioAlert(
      BuildContext context, String title, List<dynamic> liste,
      {String? key, String? field}) async {
    int secilenDeger = 0;
    int? sonuc = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: liste.map((e) {
                  return RadioListTile(
                    value: e[key ?? "ID"] as int,
                    title: Text(e[field ?? "NAME"].toString()),
                    groupValue: secilenDeger,
                    onChanged: (value) {
                      setState(
                        () => secilenDeger = value as int,
                      );
                    },
                  );
                }).toList(),
              );
            },
          ),
          actions: <Widget>[
            TextButton(
              child: const Text("Tamam"),
              onPressed: () {
                Navigator.of(context).pop(secilenDeger);
              },
            ),
          ],
        );
      },
    );
    return sonuc ?? -1;
  }

  static Future<dynamic> showBottomModal(BuildContext context, Widget content,
          {String title = "Filtre",
          Widget leading = const Icon(Icons.filter_alt_outlined)}) async =>
      await showModalBottomSheet(
        context: context,
        builder: (context) => Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 30,
                child: Icon(Icons.maximize_rounded,
                    size: 48, color: Colors.grey[400]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                child: ListTile(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: -4),
                  minLeadingWidth: 0,
                  leading: leading,
                  title: Center(
                    child: Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      Navigator.pop(context, true);
                    },
                    icon: const Icon(Icons.check),
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                ),
              ),
              Expanded(child: content),
            ],
          ),
        ),
        enableDrag: true,
        isDismissible: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
      );

  static Future<void> showImageDetail(
      BuildContext context, Widget image) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Dialog(
            insetPadding: EdgeInsets.zero,
            backgroundColor: Colors.white38,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(48.0),
                  child: Center(
                    child: image,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: IconButton(
                    icon: const Icon(
                      Icons.cancel,
                      size: 32.0,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  static Future<dynamic> showPageInModal(
      BuildContext context, StatefulWidget page,
      {bool big = false, bool barrierDismissible = true}) async {
    Size size = MediaQuery.of(context).size;
    int wt = big ? 5 : 3;
    int ht = big ? 8 : 6;
    return await showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) => Dialog(
        insetPadding: PetStatic.getScreenMode(context) == ScreenMode.desktop
            ? EdgeInsets.fromLTRB(
                size.width / wt,
                size.height / ht,
                size.width / wt,
                size.height / ht,
              )
            : EdgeInsets.zero,
        child: page,
      ),
    );
  }

  Future<bool> showAlert(
    BuildContext? context,
    String title,
    String? content,
    bool isConfirm, {
    Widget? customDesign,
    bool? barrierDismissible,
    bool isConfirmVisible = true,
    String? confirmYes,
    String? confirmNo,
    String? confirmOk,
  }) async {
    content = content ?? "";
    bool sonuc = await showAlertW(
      context,
      Text(title),
      content.isEmpty ? const Padding(padding: EdgeInsets.zero) : Text(content),
      isConfirm,
      barrierDismissible: barrierDismissible,
      customDesign: customDesign,
      isConfirmVisible: isConfirmVisible,
      confirmYes: confirmYes,
      confirmNo: confirmNo,
      confirmOk: confirmOk,
    );
    return sonuc;
  }

  static Future<bool> showAlertW(
    BuildContext? context,
    Widget title,
    Widget content,
    bool isConfirm, {
    Widget? customDesign,
    bool? barrierDismissible,
    bool isConfirmVisible = true,
    String? confirmYes,
    String? confirmNo,
    String? confirmOk,
  }) async {
    bool? sonuc = await showDialog(
      context: context ?? navigatorKey.currentState!.context,
      barrierDismissible: barrierDismissible ?? false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: title,
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                content,
                customDesign ?? const Padding(padding: EdgeInsets.zero),
              ],
            ),
          ),
          actions: isConfirmVisible
              ? <Widget>[
                  TextButton(
                    child: Text(isConfirm == false
                        ? (confirmOk ?? "Tamam")
                        : (confirmYes ?? "Evet")),
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                  ),
                  if (isConfirm)
                    TextButton(
                      child: Text(confirmNo ?? "Hayır"),
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                    ),
                ]
              : null,
        );
      },
    );
    return sonuc ?? false;
  }

  static void showLoading(BuildContext? context, {String? content}) {
    showDialog(
      barrierColor: Colors.white54,
      context: context ?? navigatorKey.currentState!.context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 64,
              width: 64,
              child: CircularProgressIndicator(
                strokeWidth: 4,
              ),
            ),
          ],
        );
      },
    );
  }
}
