import 'package:flutter/material.dart';

class QuestionBox extends StatefulWidget {
  final String? question;
  final String? date;
  const QuestionBox({Key? key, required this.question, required this.date})
      : super(key: key);

  @override
  State<QuestionBox> createState() => _QuestionBoxState();
}

class _QuestionBoxState extends State<QuestionBox> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 220.0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25.0, 32.0, 25.0, 25.0),
          child: Column(
            children: [
              Text(
                widget.date!,
                style: const TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Inter',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios_new),
                    iconSize: 28.5,
                    padding: const EdgeInsets.all(10.0),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward_ios),
                    color: const Color(0x5A000000),
                    iconSize: 28.5,
                    padding: const EdgeInsets.all(10.0),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  widget.question!,
                  style: const TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
