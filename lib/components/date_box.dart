import 'package:flutter/material.dart';
import '../globals.dart' as globals;
class DateBoxComponent extends StatefulWidget {
  const DateBoxComponent({super.key, required this.height, required this.width, required this.date, required this.currentDate, required this.changeDate});
  final double height;
  final double width;
  final int date;
  final int currentDate;
  final Function changeDate;
  @override
  State<DateBoxComponent> createState() => _DateBoxComponentState();
}

class _DateBoxComponentState extends State<DateBoxComponent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        widget.changeDate(widget.date);
      },
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1000),
          color: (widget.date==widget.currentDate)?Colors.black:Colors.white
        ),
        child: Center(
          child: Text("${widget.date}", style: (widget.date==widget.currentDate)?globals.bodyTextWhite:globals.bodyTextBlack),
        ),
      ),
    );
  }
}
