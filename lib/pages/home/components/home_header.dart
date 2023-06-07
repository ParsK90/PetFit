import 'package:flutter/material.dart';
import 'package:pet_fit/parslib/size_config.dart';
import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Row(
              children: [
                Icon(Icons.location_on),
                SizedBox(
                  width: 8,
                ),
                Column(
                  children: [
                    Text(
                      "Çünür Mahallesi",
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    Container(
                      height: 2,
                      color: Colors.black,
                      width: getProportionateScreenWidth(130),
                    ),
                    Text("Merkez / Isparta",
                        style: TextStyle(color: Colors.black, fontSize: 14)),
                  ],
                ),
              ],
            ),
          ),
          // const SearchField(),
          // IconBtnWithCounter(
          //   svgSrc: "assets/icons/Heart Icon.svg",
          //   press: () => Navigator.pushNamed(context, CartScreen.routeName),
          // ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfitem: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
