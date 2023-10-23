import 'package:flutter/material.dart';

import '../../../../common/constants/colors.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ColorName.primary,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Nama : Andre Irawan',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 13.0,
            ),
          ),
          Text(
            'NIM : 15101152630006',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 13.0,
            ),
          ),
          Text(
            'Angkatan : 2018',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 13.0,
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.book, color: Colors.white),
              Text(
                '25 SKS',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 13.0,
                ),
              ),
              SizedBox(width: 58),
              Icon(Icons.stacked_bar_chart, color: Colors.white),
              Text(
                'IPK 3.58',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 13.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
