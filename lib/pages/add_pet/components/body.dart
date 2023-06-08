// ignore_for_file: deprecated_member_use

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pet_fit/pages/add_pet/add_photo_screen.dart';

class Body extends StatefulWidget {
  final String categoryName;
  const Body({super.key, required this.categoryName});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Future<String> _getFromGallery() async {
    String path;
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
      path = imageFile.path;
    } else {
      File imageFile = File("");
      path = imageFile.path;
    }
    return path;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Adı",
                icon: Icon(
                  Icons.text_fields,
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Türü",
                icon: Icon(
                  Icons.merge_type_sharp,
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Ek Bilgi",
              icon: Icon(
                Icons.text_snippet_outlined,
              ),
            ),
            maxLines: 5,
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("İptal Et")),
              const SizedBox(width: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(
                        context, AddPhotoPetScreen.routeName);
                  },
                  child: const Text("Onayla"))
            ],
          )
        ],
      ),
    );
  }
}
