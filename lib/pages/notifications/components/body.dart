import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    // List<String> notifications = [];
    List<String> notifications = [
      "Listendeki Monster Abra A5 Satıldı",
      "Listendeki Asus Rog Satıldı",
      "Favori ilaniniz indirimde",
      "Merhaba Bu Gün Nasılsınız",
      "Ali Kullanıcısından Mesajınız Var",
      "İlanin artışta. Son 12 saate 52 görüntülenme",
    ];
    return Container(
        child: notifications.isEmpty
            ? const Center(
                child: Column(
                  children: [
                    Icon(
                      Icons.notifications_off_outlined,
                      size: 85,
                      color: Colors.grey,
                    ),
                    Text(
                      "Bildiriminiz Bulunmamaktadır",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ],
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: ListView.builder(
                    itemCount:
                        notifications.isNotEmpty ? notifications.length : 0,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(notifications[index]),
                        leading: const Icon(Icons.notifications),
                      );
                    },
                  ),
                ),
              ));
  }
}
