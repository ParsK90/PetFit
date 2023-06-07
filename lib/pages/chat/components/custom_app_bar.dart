import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pet_fit/parslib/constants.dart';
import 'package:pet_fit/parslib/size_config.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(color: kPrimaryColor),
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(16)),
          child: Row(
            children: [
              SizedBox(
                height: getProportionateScreenWidth(30),
                width: getProportionateScreenWidth(30),
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: SvgPicture.asset(
                    "assets/icons/Back ICon.svg",
                    height: 15,
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              const Text(
                "Sohbet",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: kPrimaryLightColor,
                ),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: kPrimaryLightColor,
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
