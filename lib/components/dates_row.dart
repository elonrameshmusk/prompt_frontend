import 'package:flutter/material.dart';
import './date_box.dart';
class DatesRowComponent extends StatefulWidget {
  const DatesRowComponent({super.key, required this.height, required this.width, required this.multiple});
  final double height;
  final double width;
  final double multiple;

  @override
  State<DatesRowComponent> createState() => _DatesRowComponentState();
}

class _DatesRowComponentState extends State<DatesRowComponent> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DateBoxComponent(height: widget.height, width: widget.width, date: (6*widget.multiple+1).round(),),
        DateBoxComponent(height: widget.height, width: widget.width, date:( 6*widget.multiple+2).round(),),
        DateBoxComponent(height: widget.height, width: widget.width, date: (6*widget.multiple+3).round(),),
        DateBoxComponent(height: widget.height, width: widget.width, date: (6*widget.multiple+4).round(),),
        DateBoxComponent(height: widget.height, width: widget.width, date: (6*widget.multiple+5).round(),),
        DateBoxComponent(height: widget.height, width: widget.width, date: (6*widget.multiple+6).round(),),
      ],
    );
  }
}
