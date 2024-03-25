
import 'package:flutter/material.dart';

class DragIncreaseWidget extends StatefulWidget {
  final double maxWidth;
  final Function onIncreaseComplete;
  final int amount;
  const DragIncreaseWidget({
    Key? key,
    required this.maxWidth,
    required this.onIncreaseComplete,
    required this.amount
  }) : super(key: key);

  @override
  State<DragIncreaseWidget> createState() => _DragIncreaseWidgetState();
}

class _DragIncreaseWidgetState extends State<DragIncreaseWidget> {
  double currentWidth = 41.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (DragUpdateDetails details) {
        if (details.delta.dx > 0) {
          setState(() {
            currentWidth = (currentWidth + details.delta.dx).clamp(0.0, widget.maxWidth);
          });
        }
      },
      onHorizontalDragEnd: (DragEndDetails details) {
        if (currentWidth >= widget.maxWidth) {
          widget.onIncreaseComplete(currentWidth);
        }
          setState(() {
            currentWidth = 41.0;
          });

      },
      child: Container(
        height: 41.0,
        margin: EdgeInsets.all(3),
        width: currentWidth,
        decoration: BoxDecoration(
          color: Color(0xFF15803D),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                height: 41,
                width: 41,
                child: Center(child: Icon(Icons.arrow_forward,color: Colors.white,size: 20,)))
          ],
        ),
      ),
    );
  }
}