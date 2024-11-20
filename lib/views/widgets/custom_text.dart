import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final bool hasUnderline;
  final bool hasShadow;
  final TextAlign textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool softWrap;

  const CustomText({
    Key? key,
    required this.text,
    this.fontSize = 16,
    this.color = Colors.black87,
    this.fontWeight = FontWeight.normal,
    this.hasUnderline = false,
    this.hasShadow = false,
    this.textAlign = TextAlign.left,
    this.maxLines,
    this.overflow,
    this.softWrap = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        decoration: hasUnderline ? TextDecoration.underline : null,
        shadows: hasShadow
            ? [
                Shadow(
                  offset: const Offset(1, 1),
                  blurRadius: 2,
                  color: Colors.black.withOpacity(0.3),
                ),
              ]
            : null,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      softWrap: softWrap,
    );
  }
}
