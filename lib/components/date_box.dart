import 'package:flutter/material.dart';
class DateBoxComponent extends StatefulWidget {
  const DateBoxComponent({super.key, required this.height, required this.width, required this.date});
  final double height;
  final double width;
  final int date;
  @override
  State<DateBoxComponent> createState() => _DateBoxComponentState();
}

class _DateBoxComponentState extends State<DateBoxComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: Center(
        child: Text("${widget.date}"),
      ),
    );
  }
}
