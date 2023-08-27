import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../globals.dart' as globals;

class ButtonComponent extends StatelessWidget {
  const ButtonComponent({super.key, required this.buttonText});
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: globals.primaryColor,
            textStyle: globals.buttonTextWhite,
            foregroundColor: Colors.white,
            shadowColor: Colors.black,
            padding: const EdgeInsets.fromLTRB(30, 12, 30, 12)),
        onPressed: () async {},
        child: Text(buttonText));
  }
}
