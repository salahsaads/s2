// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:s2/model.dart';

class Otp extends StatefulWidget {
  Otp({super.key});

  @override
  State<Otp> createState() => _HomeState();
}

class _HomeState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72,
      height: 72,
      child: TextFormField(
        keyboardType: TextInputType.number,
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          } else if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
        },
        decoration: InputDecoration(
            enabledBorder:
                UnderlineInputBorder(borderSide: BorderSide(color: colors.p2)),
            focusedBorder:
                UnderlineInputBorder(borderSide: BorderSide(color: colors.p1)),
            hintText: '.',
            hintStyle: TextStyle(fontSize: 60, color: colors.p2)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
