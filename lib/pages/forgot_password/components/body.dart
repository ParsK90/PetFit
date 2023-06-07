import 'package:flutter/material.dart';
import 'package:pet_fit/pages/forgot_password/forgot_password_screen.dart';
import 'package:pet_fit/parslib/components/custom_surfix_icon.dart';
import 'package:pet_fit/parslib/components/default_button.dart';
import 'package:pet_fit/parslib/components/form_error.dart';
import 'package:pet_fit/parslib/components/no_account_text.dart';
import 'package:pet_fit/parslib/constants.dart';
import 'package:pet_fit/parslib/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key, required this.type}) : super(key: key);

  final int? type; // 0: mail, 1: telefon

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Şifremi Unuttum",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(28),
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                widget.type == 0
                    ? const Text(
                        "Lütfen e-posta adresinizi girin, size hesabınıza geri dönmeniz için \n bir bağlantı göndereceğiz",
                        textAlign: TextAlign.center,
                      )
                    : const Text(
                        "Lütfen telefon numaranızı girin, size hesabınıza geri dönmeniz için \n bir doğrulama kodu göndereceğiz",
                        textAlign: TextAlign.center,
                      ),
                SizedBox(height: SizeConfig.screenHeight * 0.1),
                ForgotPassword(
                  type: widget.type ?? 0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ForgotPassword extends StatefulWidget {
  ForgotPassword({super.key, required this.type});
  int type; //0 mail 1 telefon

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? verify;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                onSaved: (newValue) => verify = newValue,
                onChanged: (value) {
                  if (value.isNotEmpty &&
                      errors.contains(widget.type == 0
                          ? kEmailNullError
                          : kPhoneNumberNullError)) {
                    setState(() {
                      errors.remove(widget.type == 0
                          ? kEmailNullError
                          : kPhoneNumberNullError);
                    });
                  } else if (emailValidatorRegExp.hasMatch(value) &&
                      errors.contains(widget.type == 0
                          ? kInvalidEmailError
                          : kInvalidPhoneNumberError)) {
                    setState(() {
                      errors.remove(widget.type == 0
                          ? kInvalidEmailError
                          : kInvalidPhoneNumberError);
                    });
                  }
                  return;
                },
                validator: (value) {
                  if (value!.isEmpty &&
                      !errors.contains(widget.type == 0
                          ? kEmailNullError
                          : kPhoneNumberNullError)) {
                    setState(() {
                      errors.add(widget.type == 0
                          ? kEmailNullError
                          : kPhoneNumberNullError);
                    });
                  } else if (!emailValidatorRegExp.hasMatch(value) &&
                      !errors.contains(widget.type == 0
                          ? kInvalidEmailError
                          : kInvalidPhoneNumberError)) {
                    setState(() {
                      errors.add(widget.type == 0
                          ? kInvalidEmailError
                          : kInvalidPhoneNumberError);
                    });
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: widget.type == 0 ? "Email" : "Telefon",
                  hintText: widget.type == 0
                      ? "Mail adreinizi yazınız"
                      : "Telefon numaranızı yazınız",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: widget.type == 0
                      ? const CustomSurffixIcon(
                          svgIcon: "assets/icons/Mail.svg")
                      : const CustomSurffixIcon(
                          svgIcon: "assets/icons/Phone.svg"),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(30)),
              FormError(errors: errors),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              DefaultButton(
                text: "Şifremi Unuttum",
                press: () {
                  if (_formKey.currentState!.validate()) {}
                },
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              const NoAccountText(),
            ],
          ),
        ),
        TextButton(
            onPressed: () {
              widget.type == 0 ? widget.type = 1 : widget.type = 0;
              setState(() {});
              Navigator.of(context).pop();
              Navigator.pushNamed(context, ForgotPasswordScreen.routeName,
                  arguments: {"type": widget.type});
            },
            child: Text(
                widget.type == 0 ? "Telefon İle Doğrula" : "Mail İle Doğrula"))
      ],
    );
  }
}

// class ForgotPassForm extends StatefulWidget {
//   const ForgotPassForm({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _ForgotPassFormState createState() => _ForgotPassFormState();
// }

// class _ForgotPassFormState extends State<ForgotPassForm> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

//       ],
//     );
//   }
// }

// class ForgotPassForm extends StatefulWidget {
//   const ForgotPassForm({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _ForgotPassFormState createState() => _ForgotPassFormState();
// }

// class _ForgotPassFormState extends State<ForgotPassForm> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
