import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  static String routeName = "/settings";
  const SettingsScreen({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _beslenmeBildirim = false;
  bool _beslenmeAlarm = false;
  bool _temizlik = false;
  bool _saglikKontrol = false;
  bool _dogumGunu = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ayarlar',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              "Bildirim Seçenekleri",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            SwitchListTile(
              title: const Text(
                'Beslenme vakitlerinide bana bildir',
              ),
              value: _beslenmeBildirim,
              onChanged: (bool value) {
                setState(() {
                  _beslenmeBildirim = value;
                });
              },
              secondary: const Icon(Icons.food_bank),
            ),
            const Divider(),
            const Text("Alarm Seçenekleri",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                )),
            const Divider(),
            SwitchListTile(
              title: const Text('Beslenme Vakitlerini Bildir'),
              value: _beslenmeAlarm,
              onChanged: (bool value) {
                setState(() {
                  _beslenmeAlarm = value;
                });
              },
              secondary: const Icon(Icons.food_bank),
            ),
            SwitchListTile(
              title: const Text('Temizlik Vakitlerini Bildir'),
              value: _temizlik,
              onChanged: (bool value) {
                setState(() {
                  _temizlik = value;
                });
              },
              secondary: const Icon(Icons.cleaning_services),
            ),
            SwitchListTile(
              title: const Text('Sağlık Kontrollerini Bildir'),
              value: _saglikKontrol,
              onChanged: (bool value) {
                setState(() {
                  _saglikKontrol = value;
                });
              },
              secondary: const Icon(Icons.call),
            ),
            SwitchListTile(
              title: const Text('Doğum Günlerini Bildir'),
              value: _dogumGunu,
              onChanged: (bool value) {
                setState(() {
                  _dogumGunu = value;
                });
              },
              secondary: const Icon(Icons.cake),
            ),
          ],
        ),
      ),
    );
  }
}
