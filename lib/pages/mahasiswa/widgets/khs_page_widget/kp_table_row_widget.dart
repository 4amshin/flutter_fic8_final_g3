import 'package:flutter/material.dart';
import '../../../../common/constants/colors.dart';

class KpTableRowWidget extends StatelessWidget {
  final double height;
  final String title;
  final FontWeight fontWeight;
  final double fontSize;
  final Color fontColor;
  const KpTableRowWidget({
    super.key,
    required this.title,
    this.height = 40,
    this.fontWeight = FontWeight.w400,
    this.fontSize = 13.0,
    this.fontColor = ColorName.secondaryTextGrey,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: fontColor,
            fontFamily: 'Poppins',
            fontWeight: fontWeight,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
