import 'package:flutter/material.dart';
import 'package:kingdom_keys_app/other_components/option.dart';

class Options extends StatefulWidget {
  final List<Map<String, dynamic>>? options;
  const Options({Key? key, required this.options}) : super(key: key);

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  List<Map<String, dynamic>>? options = [];
  Widget _listBuilder(BuildContext context, int id) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: () {
            for (int i = 0; i < options!.length; i++) {
              if (i == id) {
                setState(() {
                  options![id] = {"name": options![id]["name"], "active": true};
                });
              } else {
                setState(() {
                  options![i] = {"name": options![i]["name"], "active": false};
                });
              }
            }
          },
          child: Option(
            option: options![id]["name"],
            id: id,
            active: options![id]["active"],
          ),
        ),
        SizedBox(
          height: id != widget.options!.length
              ? MediaQuery.of(context).size.height * 0.01
              : 0,
        ),
      ],
    );
  }

  void loadState() {
    setState(() {
      options = widget.options!.sublist(0);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 250.0,
          child: ListView.builder(
            itemBuilder: _listBuilder,
            itemCount: options!.length,
          ),
        ),
        const Option(
          option: 'Submit',
          active: false,
          id: -1,
          submit: true,
        ),
      ],
    );
  }
}
