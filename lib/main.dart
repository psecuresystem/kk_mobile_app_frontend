import 'package:flutter/material.dart';
import 'package:kingdom_keys_app/pages/calendar.dart';
import 'package:kingdom_keys_app/pages/kingdom_keys.dart';
import 'package:kingdom_keys_app/pages/login.dart';
import 'package:kingdom_keys_app/pages/splash.dart';
import 'package:kingdom_keys_app/pages/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/splash": (BuildContext context) => const SplashScreen(),
        "/login": (BuildContext context) => const Login(),
        "/kk": (BuildContext context) => const KingdomKeys(),
        "/calendar": (BuildContext context) => const Calendar(),
        "/test": (BuildContext context) => const Test(
              question: 'How old was methuselah when He died.',
              date: '12/5/2022',
            ),
      },
      initialRoute: "/splash",
    );
  }
}
