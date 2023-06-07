import 'package:flutter/material.dart';
import 'package:pet_fit/parslib/constants.dart';
import 'package:pet_fit/parslib/models/Pet.dart';
import 'package:pet_fit/parslib/size_config.dart';

class PetImages extends StatefulWidget {
  const PetImages({
    Key? key,
    required this.pet,
  }) : super(key: key);

  final Pet pet;

  @override
  // ignore: library_private_types_in_public_api
  _PetImagesState createState() => _PetImagesState();
}

class _PetImagesState extends State<PetImages> {
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
              tag: widget.pet.id.toString(),
              child: widget.pet.resim,
              // child: Image.asset(widget.pet.resim[selectedImage]),
            ),
          ),
        ),
        // SizedBox(height: getProportionateScreenWidth(20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                widget.pet.id, (index) => buildSmallPetPreview(index)),
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallPetPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: AnimatedContainer(
        duration: defaultDuration,
        margin: const EdgeInsets.only(right: 15),
        padding: const EdgeInsets.all(8),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: kPrimaryColor.withOpacity(selectedImage == index ? 1 : 0)),
        ),
        child: widget.pet.resim,
        // child: Image.asset(widget.pet.images[index]),
      ),
    );
  }
}
