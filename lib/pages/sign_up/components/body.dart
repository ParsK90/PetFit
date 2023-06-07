import 'package:flutter/material.dart';
import 'package:pet_fit/pages/sign_up/components/webViewCC.dart';
import 'package:pet_fit/parslib/components/socal_card.dart';
import 'package:pet_fit/parslib/constants.dart';
import 'package:pet_fit/parslib/size_config.dart';
import 'sign_up_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text("Kayıt Ol", style: headingStyle),
                const Text(
                  "Bilgilerinizi tamamlayın veya sosyal medya ile \n devam edin",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                const SignUpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      useSafeArea: true,
                      builder: (context) {
                        return const WebViewCC();
                      },
                    );
                  },
                  child: Text(
                    'Şartları ve koşulları kabul ediyorum.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
