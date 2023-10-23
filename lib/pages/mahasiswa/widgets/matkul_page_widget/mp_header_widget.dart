import 'package:flutter/material.dart';

import '../../../../common/constants/colors.dart';
import '../../../../common/constants/images.dart';
import '../../../../common/widgets/profile_picture.dart';

class MpHeaderMatkulWidget extends StatelessWidget {
  const MpHeaderMatkulWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ColorName.primary,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProfilePicture(
            imgUrl: Images.profile2,
            size: 70,
          ),
          Text(
            'Andre Irawan',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 13.0,
            ),
          ),
          Text(
            '15101152630006',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 13.0,
            ),
          ),
        ],
      ),
    );
  }
}
