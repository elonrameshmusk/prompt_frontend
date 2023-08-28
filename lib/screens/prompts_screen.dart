import 'package:flutter/material.dart';
import '../globals.dart' as globals;
import '../components/prompt_box.dart';
class PromptsScreen extends StatefulWidget {
  const PromptsScreen({super.key});

  @override
  State<PromptsScreen> createState() => _PromptsScreenState();
}

class _PromptsScreenState extends State<PromptsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Icon(
                Icons.arrow_back
            ),
            title: Row(
              children: [
                Expanded(
                  child: Text('App Prompt: Nov 31', style: globals.displayTextBlack,),
                ),
                Icon(Icons.settings)
              ],
            )
        ),
        body: Column(
          children: [
            PromptBoxComponent(time: "6:00", prompt: "do the hard thing",),
            PromptBoxComponent(time: "9:00", prompt: "Real UI public release event, mail admin.office for dev news and transmit ip address to system. "),
            PromptBoxComponent(time: "10:00", prompt: "Real UI public release event, mail admin."),
            PromptBoxComponent(time: "11:00", prompt: "Real UI public release event, mail admin.office for dev news and transmit ip address to system. snf ptobsbility calucation neutrality")
          ],
        ),
      ),
    );
  }
}

