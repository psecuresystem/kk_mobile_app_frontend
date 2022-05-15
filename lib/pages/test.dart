import 'package:flutter/material.dart';
import 'package:kingdom_keys_app/other_components/options.dart';
import 'package:kingdom_keys_app/other_components/question_box.dart';

class Test extends StatefulWidget {
  final String? question;
  final String? date;
  const Test({Key? key, required this.question, required this.date})
      : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF5A72B8),
        title: const Text(
          'Test',
          style: TextStyle(
            fontSize: 34.0,
            fontWeight: FontWeight.w700,
            fontFamily: 'Inter',
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 160,
              color: const Color(0xFF5A72B8),
            ),
            Transform.translate(
              offset: const Offset(0, -117),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  children: [
                    QuestionBox(
                      question: widget.question,
                      date: widget.date,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    Options(options: const [
                      {"name": "127 years", "active": false},
                      {"name": "127 years", "active": false},
                      {"name": "127 years", "active": false},
                      {"name": "127 years", "active": false},
                    ])
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
