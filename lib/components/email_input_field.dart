import 'package:flutter/material.dart';
import '../globals.dart' as globals;

class EmailInputFieldComponent extends StatefulWidget {
  const EmailInputFieldComponent({super.key, required this.label, required this.updateEmail,});
  final String label;
  final Function updateEmail;

  @override
  State<EmailInputFieldComponent> createState() =>
      _EmailInputFieldComponentState();
}

class _EmailInputFieldComponentState extends State<EmailInputFieldComponent> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      onChanged: (text){
        widget.updateEmail(text);
      },
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2.0),
          ),
          labelText: widget.label,
          labelStyle: globals.headingTextBlack),
      cursorColor: Colors.black,
    );
  }
}
