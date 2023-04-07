import 'package:flutter/material.dart';
import 'package:hci/utils/style.dart';

class Label extends StatelessWidget {
  final String text;
  final TextStyle style;
  const Label({required this.text, required this.style, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: heading1,
        ),
        Icon(
          Icons.more_horiz,
          color: icon,
          size: 28,
        )
      ],
    );
  }
}
