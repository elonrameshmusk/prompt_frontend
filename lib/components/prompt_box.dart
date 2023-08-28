import 'package:flutter/material.dart';
import '../globals.dart' as globals;
class PromptBoxComponent extends StatefulWidget {
  const PromptBoxComponent({super.key, required this.time, required this.prompt});
  final String time;
  final String prompt;

  @override
  State<PromptBoxComponent> createState() => _PromptBoxComponentState();
}

class _PromptBoxComponentState extends State<PromptBoxComponent> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    double size = 80;
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
      constraints: BoxConstraints(
        minHeight: size
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                child: Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.time, style: globals.bodyTextBlack,),
                  Text(widget.prompt, style: globals.bodyTextBlack,)
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                child: Icon(
                  Icons.more_vert
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
