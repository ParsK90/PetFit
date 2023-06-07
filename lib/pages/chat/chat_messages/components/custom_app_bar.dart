import 'package:flutter/material.dart';
import 'package:pet_fit/parslib/constants.dart';
import 'package:pet_fit/parslib/size_config.dart';

class CustomAppBar extends StatelessWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(3)),
        child: Row(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(50),
              width: getProportionateScreenWidth(50),
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                // icon: SvgPicture.asset("assets/demo/profile2.jpg"),
                onPressed: () => Navigator.pop(context),
              ),
              // child: TextButton(
              //   style: TextButton.styleFrom(
              //     foregroundColor: kPrimaryColor,
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(60),
              //     ),
              //     backgroundColor: Colors.white,
              //     padding: EdgeInsets.zero,
              //   ),
              //   onPressed: () => Navigator.pop(context),
              //   child: SvgPicture.asset(
              //     "assets/demo/profile2.jpg",
              //     height: 15,
              //   ),
              // ),
            ),
            SizedBox(
              child: CircleAvatar(
                backgroundImage: Image.asset(
                  "assets/demo/profile2.jpg",
                ).image,
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 115),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
