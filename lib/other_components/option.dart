import 'package:flutter/material.dart';

class Option extends StatefulWidget {
  final String? option;
  final bool? active;
  final int? id;
  final bool? submit;
  const Option(
      {Key? key,
      required this.option,
      required this.active,
      required this.id,
      this.submit = false})
      : super(key: key);

  @override
  State<Option> createState() => _OptionState();
}

class _OptionState extends State<Option> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width,
        color: widget.active!
            ? const Color(0xFF0836be)
            : widget.submit!
                ? const Color(0xFFBC9747)
                : Colors.white,
        child: Text(
          widget.option!,
          style: const TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w400,
            fontFamily: 'Inter',
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
