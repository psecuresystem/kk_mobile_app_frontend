import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/login_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 120.0),
            Image.asset('assets/logo.jpg', width: 82.0, height: 55.0),
            const Text(
              'KWM',
              style: TextStyle(
                color: Colors.white,
                fontSize: 48.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Inter',
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    color: const Color(0xFF656464),
                    padding: const EdgeInsets.only(
                      left: 21.0,
                    ),
                    margin: const EdgeInsets.only(
                      bottom: 23.0,
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Color(0xFFAAAAAA),
                          fontSize: 30.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: const Color(0xFF656464),
                    padding: const EdgeInsets.only(
                      left: 21.0,
                    ),
                    margin: const EdgeInsets.only(
                      bottom: 87.0,
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Color(0xFFAAAAAA),
                          fontSize: 30.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, "/kk");
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: const Color.fromARGB(199, 188, 151, 71),
                              padding: const EdgeInsets.all(14.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        'Forgot Password? ',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Click here',
                          style: TextStyle(
                            color: Color(0xFFB1B1B1),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
