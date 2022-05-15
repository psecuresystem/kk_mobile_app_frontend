import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.3),
          Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/logo.jpg',
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                const Text(
                  'Get daily Kingdom Keys',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter',
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xffac8a41),
                    fixedSize: const Size(250.0, 45.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Get Started',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/login");
                  },
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          )
        ],
      ),
    );
  }
}
