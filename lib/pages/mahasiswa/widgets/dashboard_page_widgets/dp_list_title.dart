import 'package:flutter/material.dart';
import 'package:flutter_fic8_final_g3/common/constants/colors.dart';

class DpListTitle extends StatelessWidget {
  const DpListTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Dashboard Mahasiswa",
          style: TextStyle(
            color: ColorName.primary,
            fontSize: 15.0,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 100),
          child: Divider(
            color: ColorName.primary,
            thickness: 2,
          ),
        ),
      ],
    );
  }
}
