// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_fic8_final_g3/common/constants/colors.dart';
import 'package:flutter_fic8_final_g3/common/widgets/profile_picture.dart';

class DpCard extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String nim;
  final String fakultas;
  final String semester;
  const DpCard({
    Key? key,
    required this.imgUrl,
    required this.name,
    required this.nim,
    required this.fakultas,
    required this.semester,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.red,
        gradient: const LinearGradient(
          colors: [
            Color(0xff2E6394),
            Color(0xff382F92),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Column(
        children: [
          ProfilePicture(
            imgUrl: imgUrl,
            size: 70,
          ),
          const SizedBox(height: 10),
          Column(
            children: [
              Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                ),
              ),
              Text(
                nim,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  fakultas,
                  style: const TextStyle(
                    color: ColorName.text,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 11,
                  ),
                ),
                const SizedBox(
                  height: 19,
                  child: VerticalDivider(
                    color: ColorName.primary,
                    thickness: 1.5,
                  ),
                ),
                Text(
                  "Semester $semester",
                  style: const TextStyle(
                    color: ColorName.text,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
