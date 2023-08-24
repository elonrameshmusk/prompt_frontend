import 'package:flutter/material.dart';
import '../globals.dart' as globals;
import 'package:prompt_frontend/components/button.dart';
import 'package:prompt_frontend/components/email_input_field.dart';
import 'package:prompt_frontend/components/password_input_field.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late String email = '';
  late String password = '';
  void setEmail(String text){
    setState(() {
      email = text;
    });
  }
  void setPassword(String text){
    setState((){
      password = text;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Text("Sign in to Prompt", style: globals.displayTextBlack,),
                ),
              ),
              Container(margin: const EdgeInsets.fromLTRB(20, 0, 20, 60),child: EmailInputFieldComponent(label: 'Email', updateEmail: setEmail,),),
              Container(margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),child: PasswordInputFieldComponent(label: 'Password', updatePassword: setPassword,),),
              Container(padding: const EdgeInsets.fromLTRB(0, 60, 0, 60), child: const ButtonComponent(buttonText: "Sign In")),
            ],
          ),
        )
    );
  }
}
