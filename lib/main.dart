import 'package:flutter/material.dart';
import 'package:prompt_frontend/screens/signup_screen.dart';
import 'package:prompt_frontend/screens/signin_screen.dart';
import 'package:prompt_frontend/screens/home_screen.dart';
import 'package:prompt_frontend/screens/prompts_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prompt',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const PromptsScreen(),
    );
  }
}
