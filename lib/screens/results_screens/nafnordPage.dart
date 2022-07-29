import 'package:bin_smaforrit/code_gen/ord.dart';
import 'package:bin_smaforrit/styles/color_constants.dart';
import 'package:flutter/material.dart';

class NafnordPage extends StatelessWidget {

  static const route = '/no';

  @override
  Widget build(BuildContext context) {

    final ord = ModalRoute.of(context)!.settings.arguments as Ord;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: background,
          title: Text(ord.ord),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              ord.ord
            )
            ),
          ),
    );
  }
}