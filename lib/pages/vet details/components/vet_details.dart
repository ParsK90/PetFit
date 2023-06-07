import 'package:flutter/material.dart'
    show
        BuildContext,
        Container,
        EdgeInsets,
        Key,
        Padding,
        Row,
        StatelessWidget,
        Text,
        Widget;
import 'package:pet_fit/parslib/models/Vet.dart';
import 'package:pet_fit/parslib/size_config.dart';

class VetDetails extends StatelessWidget {
  const VetDetails({
    Key? key,
    required this.vet,
  }) : super(key: key);

  final Vet vet;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          const Text("Veteriner:"),
          ...List.generate(
            vet.description.length,
            (index) => VetDetails(
              vet: vet,
            ),
          ),
        ],
      ),
    );
  }
}

class VetDetail extends StatelessWidget {
  const VetDetail({
    Key? key,
    required Vet vet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
      height: getProportionateScreenHeight(50),
      width: getProportionateScreenWidth(50),
    );
  }
}
