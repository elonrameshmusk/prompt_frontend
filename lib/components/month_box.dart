import 'package:flutter/material.dart';
import '../globals.dart' as globals;
class MonthBoxComponent extends StatefulWidget {
  const MonthBoxComponent({super.key, required this.month, required this.currentMonth, required this.changeMonth});
  final String month;
  final String currentMonth;
  final Function changeMonth;
  @override
  State<MonthBoxComponent> createState() => _MonthBoxComponentState();
}

class _MonthBoxComponentState extends State<MonthBoxComponent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        widget.changeMonth(widget.month);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1000),
            color: (widget.month==widget.currentMonth)?Colors.black:Colors.white
        ),
        height: 40,
        width: 40,
        child: Center(child: Text(widget.month, style: (widget.month==widget.currentMonth)?globals.bodyTextWhite:globals.bodyTextBlack,)),
      ),
    );
  }
}
