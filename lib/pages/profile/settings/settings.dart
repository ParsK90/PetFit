import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  static String routeName = "/settings";
  const SettingsScreen({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _showPhoneNumber = false;
  bool _receiveEmails = false;
  bool _receiveSMS = false;
  bool _receiveWhatsApp = false;
  bool _receivePhoneCalls = false;

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
              "Gizlilik Seçenekleri",
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
                'Telefon Numaramı İlanlarda Göster',
              ),
              value: _showPhoneNumber,
              onChanged: (bool value) {
                setState(() {
                  _showPhoneNumber = value;
                });
              },
              secondary: const Icon(Icons.privacy_tip),
            ),
            const Divider(),
            const Text("İletişim Seçenekleri",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                )),
            const Divider(),
            SwitchListTile(
              title: const Text('E-posta Al'),
              value: _receiveEmails,
              onChanged: (bool value) {
                setState(() {
                  _receiveEmails = value;
                });
              },
              secondary: const Icon(Icons.email),
            ),
            SwitchListTile(
              title: const Text('SMS Al'),
              value: _receiveSMS,
              onChanged: (bool value) {
                setState(() {
                  _receiveSMS = value;
                });
              },
              secondary: const Icon(Icons.sms),
            ),
            SwitchListTile(
              title: const Text('WhatsApp Al'),
              value: _receiveWhatsApp,
              onChanged: (bool value) {
                setState(() {
                  _receiveWhatsApp = value;
                });
              },
              secondary: const Icon(Icons.call),
            ),
            SwitchListTile(
              title: const Text('Telefon Çağrısı Al'),
              value: _receivePhoneCalls,
              onChanged: (bool value) {
                setState(() {
                  _receivePhoneCalls = value;
                });
              },
              secondary: const Icon(Icons.call),
            ),
          ],
        ),
      ),
    );
  }
}
