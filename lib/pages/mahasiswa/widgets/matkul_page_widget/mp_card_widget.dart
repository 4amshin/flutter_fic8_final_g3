import 'package:flutter/material.dart';

import '../../../../common/constants/colors.dart';

class MpCardWidget extends StatelessWidget {
  const MpCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), color: Colors.orange),
          child: const Center(
            child: Text(
              'P',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '101 - Pengantar Teknologi Informasi',
                style: TextStyle(
                  color: ColorName.primary,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 13.0,
                ),
              ),
              RichText(
                text: const TextSpan(
                  text: 'SKS : ',
                  style: TextStyle(
                    color: ColorName.textGrey,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 13.0,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '2 ',
                      style: TextStyle(
                        color: ColorName.primary,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 13.0,
                      ),
                    ),
                    TextSpan(
                      text: 'Nilai : ',
                      style: TextStyle(
                        color: ColorName.textGrey,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 13.0,
                      ),
                    ),
                    TextSpan(
                      text: 'B',
                      style: TextStyle(
                        color: ColorName.primary,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 13.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
