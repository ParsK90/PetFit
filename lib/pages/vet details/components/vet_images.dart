import 'package:flutter/material.dart';
import 'package:pet_fit/parslib/models/Vet.dart';
import 'package:pet_fit/parslib/size_config.dart';

class VetImages extends StatefulWidget {
  const VetImages({
    Key? key,
    required this.vet,
  }) : super(key: key);

  final Vet vet;

  @override
  // ignore: library_private_types_in_public_api
  _VetImagesState createState() => _VetImagesState();
}

class _VetImagesState extends State<VetImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Hero(
              tag: widget.vet.id.toString(),
              child: Image.asset(widget.vet.images[selectedImage]),
            ),
          ),
        ),
      ],
    );
  }
}
