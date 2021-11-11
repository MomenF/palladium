import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../languages/custome_languages.dart';
import '../services/services.dart';
import 'config.dart';
import 'module/moduls.dart';
import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Palladium',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.white.withOpacity(0.0),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
            fontSize: 16
          )
        )
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<LanguageProvider>(create: (_) => LanguageProvider()),
          ChangeNotifierProvider<IndexScreen>(create: (_) => IndexScreen()),
          ChangeNotifierProvider<Brand>(create: (_) => Brand()),
          ChangeNotifierProvider<Country>(create: (_) => Country()),
          ChangeNotifierProvider<MemberShip>(create: (_) => MemberShip()),
          ChangeNotifierProvider<Product>(create: (_) => Product()),
        ],
        child: isLogIn == true ? const NavScreen() : const SplashScreen(),
      ),
    );
  }
}
