import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:pet_fit/pages/sign_in/sign_in_screen.dart';
import 'package:pet_fit/parslib/components/v1/app_extensions.dart';
import 'package:pet_fit/parslib/components/v1/special_button.dart';
import 'package:pet_fit/parslib/components/v1/text/subtitle1_text.dart';
import 'package:pet_fit/parslib/constants.dart';
import 'package:pet_fit/parslib/models/manager/connectivity_manager.dart';
import 'package:pet_fit/parslib/models/view/base_view.dart';
import 'package:pet_fit/parslib/models/view/no_internet_view_model.dart';
import 'package:provider/provider.dart';

class NoInternetView extends StatelessWidget {
  static const path = '/nointernet';
  const NoInternetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BaseView<NoInternetViewModel>(
        viewModel: NoInternetViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, NoInternetViewModel viewModel) =>
            Scaffold(
          backgroundColor: kPrimaryColor,
          body: Consumer<ConnectivityManager>(
            builder: (context, model, child) {
              if (model.isOnline != null) {
                return model.isOnline!
                    ? const SignInScreen()
                    : _bodyView(context, viewModel);
              }
              return const Center(
                child: CircularProgressIndicator(
                  color: kPrimaryColor,
                ),
              );
            },
          ),
        ),
      );

  FlipInX _bodyView(BuildContext context, NoInternetViewModel viewModel) =>
      FlipInX(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Subtitle1Text(
                data: 'Lütfen internet bağlantınızı kontrol ediniz.',
                context: context,
              ),
            ),
            context.emptySizedHeightBoxLow2x,
            SpecialButton(
              context: context,
              onTap: viewModel.goToOnBoard,
            )
          ],
        ),
      );
}
