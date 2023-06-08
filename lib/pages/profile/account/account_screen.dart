import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountScreen extends StatelessWidget {
  static String routeName = "/account";
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 50.0,
                  backgroundImage:
                      AssetImage("assets/images/Profile Image.jpg"),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Ahmet Çimen',
                  style: TextStyle(fontSize: 20.0),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Katılma Tarihi: 29/10/2022',
                  style: TextStyle(fontSize: 14.0),
                ),
                const SizedBox(height: 12.0),
                Row(
                  children: [
                    const Text(
                      'Evcil Hayvan Sayısı: 3',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    // const Spacer(),
                    // SvgPicture.asset("assets/icons/Star Icon.svg"),
                    // const SizedBox(width: 8.0),
                    // const Text(
                    //   'Rating: 4.5',
                    //   style: TextStyle(fontSize: 16.0),
                    // ),
                    // const SizedBox(width: 16.0),
                  ],
                ),
              ],
            ),
          ),
          // const Divider(),
          const Text(
            "Aileniz",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 4,
          ),
          const Divider(
            height: 4,
            // color: Colors.black,
            thickness: 2,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.count(
                crossAxisCount: 2,
                padding: const EdgeInsets.all(16.0),
                childAspectRatio: 1 / 1,
                shrinkWrap: true,
                children: [
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/demo/luna.jpg",
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Luna',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/demo/gofret.jpg",
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Gofret',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
