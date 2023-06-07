import 'package:flutter/material.dart';
import 'package:pet_fit/pages/navigation/no_internet_view.dart';
import 'package:pet_fit/parslib/components/v1/app_extensions.dart';
import 'package:pet_fit/parslib/components/v1/text/headline6_text.dart';
import 'package:pet_fit/parslib/models/manager/connectivity_manager.dart';
import 'package:pet_fit/parslib/models/view/splash_view_model.dart';
import 'package:provider/provider.dart';
import 'base_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BaseView<SplashViewModel>(
        viewModel: SplashViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, SplashViewModel viewModel) =>
            Scaffold(
          backgroundColor: context.primaryColor,
          body: Consumer<ConnectivityManager>(
            builder: (context, model, child) {
              if (model.isOnline != null) {
                return model.isOnline!
                    ? _bodyView(context)
                    : const NoInternetView();
              }
              return Center(
                child: CircularProgressIndicator(
                  color: context.primaryColor,
                ),
              );
            },
          ),
        ),
      );

  Center _bodyView(BuildContext context) => Center(
        child: Headline6Text(context: context, data: 'Ceppgo'),
      );
}
