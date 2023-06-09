import 'package:flutter/material.dart';
import 'package:pet_fit/pages/sign_in/sign_in_screen.dart';
import 'package:pet_fit/parslib/components/default_button.dart';
import 'package:pet_fit/parslib/constants.dart';
import 'package:pet_fit/parslib/size_config.dart';
import '../components/splash_content.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {"text": "Pet - Fit'e Hoşgeldin!", "image": "assets/images/splash1.png"},
    {
      "text": "Ailenizin En Küçük Üyeleri İçin En Büyük Yardımcı!",
      "image": "assets/images/splash2.png"
    },
    {
      "text": " Sevimli Dostlarınızın Sağlığı Bizimle Güvende",
      "image": "assets/images/splash3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    const Spacer(flex: 3),
                    DefaultButton(
                      text: "Devam Et",
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index
            ? kPrimaryColor
            : const Color.fromRGBO(110, 8, 222, 1),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
