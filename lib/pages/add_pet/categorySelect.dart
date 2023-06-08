import 'package:flutter/material.dart';
import 'package:pet_fit/pages/add_pet/add_pet_screen.dart';
import 'package:pet_fit/pages/home/components/search_field.dart';
import 'package:pet_fit/parslib/size_config.dart';

class CategorySelectScreen extends StatefulWidget {
  static String routeName = "/categorySelect";
  const CategorySelectScreen({super.key});

  @override
  State<CategorySelectScreen> createState() => _CategorySelectScreenState();
}

class _CategorySelectScreenState extends State<CategorySelectScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    List category = [
      {
        "categoryName": "Kedi",
        "categoryImage": "assets/images/cat.jpg",
        "categoryCount": 1,
      },
      {
        "categoryName": "Köpek",
        "categoryImage": "assets/images/dog.jpg",
        "categoryCount": 1,
      },
      {
        "categoryName": "Kuş",
        "categoryImage": "assets/images/bird.jpg",
        "categoryCount": 0,
      },
      {
        "categoryName": "Balık",
        "categoryImage": "assets/images/fish.jpg",
        "categoryCount": 0,
      },
      {
        "categoryName": "Diğer",
        "categoryImage": "assets/images/pet.jpg",
        "categoryCount": 0,
      }
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Kategori Seç",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
          // image: DecorationImage(
          //   image:
          //       .image /*NetworkImage(photo)*/,
          //   fit: BoxFit.fitWidth,
          // ),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey.withOpacity(0.5),r
          //     spreadRadius: 1,
          //     blurRadius: 1,
          //     offset: const Offset(0, 1.5),
          //   ),
          // ],
        ),
        child: Column(
          children: [
            SizedBox(
              width: SizeConfig.screenWidth,
              child: Container(),
              // SearchField(
              //   key: UniqueKey(),
              // ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: (category.isNotEmpty ? category.length : 0),
                itemBuilder: (context, index) {
                  return Card(
                    shadowColor: Color.lerp(Colors.black, Colors.black, 2),
                    child: ListTile(
                      onTap: () {
                        print(category[index]["categoryName"]);
                        Navigator.pushNamed(context, AddPetScreen.routeName,
                            arguments: {
                              "categoryName": category[index]["categoryName"]
                            });
                      },
                      title: Flex(
                        direction: Axis.vertical,
                        children: [
                          Image.asset(category[index]["categoryImage"],
                              fit: BoxFit.fill, width: 120),
                          Text(category[index]["categoryName"]),
                          Center(
                            child: Text(
                              "(${category[index]["categoryCount"].toString()}) Evcil Hayvanınız Bulunuyor",
                              style: const TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
