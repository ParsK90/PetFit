// import 'package:flutter/material.dart';
// import 'pages/home.dart';

// void main() {
//   runApp(const PetApp());
// }

// class PetApp extends StatelessWidget {
//   const PetApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Pet App",
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const HomePage(),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:pet_fit/pages/splash/splash_screen.dart';
import 'package:pet_fit/parslib/routes.dart';
import 'package:pet_fit/parslib/size_config.dart';
import 'package:pet_fit/parslib/theme.dart';
import 'package:provider/provider.dart';
import 'package:pet_fit/parslib/models/manager/connectivity_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ConnectivityManager(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  static const String path = '/';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet - Fit',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
