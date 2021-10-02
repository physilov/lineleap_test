import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final String? family;
  final double? size;
  final Color? colors;
  final FontWeight? weight;

  CustomText({required this.text, this.size, this.colors, this.weight, this.family});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontFamily: family ?? 'Lato-Regular',fontSize: size ?? 16, color: colors ?? Colors.white, fontWeight: weight ?? FontWeight.normal),);
  }
}