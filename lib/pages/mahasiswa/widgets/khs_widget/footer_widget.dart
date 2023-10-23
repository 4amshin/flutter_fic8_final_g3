import 'package:flutter/material.dart';

import '../../../../common/constants/colors.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorName.greyBox,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: const Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(8, 8, 8, 2),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Jumlah SKS Diambil',
                    style: TextStyle(
                      color: ColorName.secondaryTextGrey,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0,
                    ),
                  ),
                ),
                Text(
                  ':',
                  style: TextStyle(
                    color: ColorName.secondaryTextGrey,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 13.0,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Text(
                    '25',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorName.secondaryTextGrey,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.white,
            thickness: 2,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 4, 8, 2),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Jumlah Mata Kuliah Diambil',
                    style: TextStyle(
                      color: ColorName.secondaryTextGrey,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0,
                    ),
                  ),
                ),
                Text(
                  ':',
                  style: TextStyle(
                    color: ColorName.secondaryTextGrey,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 13.0,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Text(
                    '7',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorName.secondaryTextGrey,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.white,
            thickness: 2,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 4, 8, 8),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Jumlah Mutu',
                    style: TextStyle(
                      color: ColorName.secondaryTextGrey,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0,
                    ),
                  ),
                ),
                Text(
                  ':',
                  style: TextStyle(
                    color: ColorName.secondaryTextGrey,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 13.0,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Text(
                    '58',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorName.secondaryTextGrey,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0,
                    ),
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
