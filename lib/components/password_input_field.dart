import 'package:flutter/material.dart';
import '../globals.dart' as globals;

class PasswordInputFieldComponent extends StatefulWidget {
  const PasswordInputFieldComponent({super.key, required this.label, required this.updatePassword});
  final String label;
  final Function updatePassword;

  @override
  State<PasswordInputFieldComponent> createState() =>
      _PasswordInputFieldComponentState();
}

class _PasswordInputFieldComponentState
    extends State<PasswordInputFieldComponent> {
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (text){
        widget.updatePassword(text);
      },
      obscureText: !_passwordVisible,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2.0),
        ),
        labelText: widget.label,
        labelStyle: globals.headingTextBlack,
        suffixIcon: IconButton(
          icon: Icon(
            _passwordVisible ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),
      ),
      cursorColor: Colors.black,
    );
  }
}
