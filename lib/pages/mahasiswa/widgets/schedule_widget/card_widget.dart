import 'package:flutter/material.dart';

import '../../../../common/constants/colors.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
      decoration: BoxDecoration(
        border: Border.all(color: ColorName.greyBox),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Basis Data',
            style: TextStyle(
              color: ColorName.primary,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 18.0,
            ),
          ),
          const Text(
            'Dosen : Sulisa, M.Kom',
            style: TextStyle(
              color: ColorName.textGrey,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 13.0,
            ),
          ),
          const Text(
            'Ruangan: 1A',
            style: TextStyle(
              color: ColorName.textGrey,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 13.0,
            ),
          ),
          Row(
            children: [
              const Expanded(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Jam Mulai',
                          style: TextStyle(
                            color: ColorName.textGrey,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 13.0,
                          ),
                        ),
                        Text(
                          '8:30',
                          style: TextStyle(
                            color: ColorName.primary,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          'Jam Selesai',
                          style: TextStyle(
                            color: ColorName.textGrey,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 13.0,
                          ),
                        ),
                        Text(
                          '8:30',
                          style: TextStyle(
                            color: ColorName.primary,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  height: 23,
                  width: 70,
                  decoration: BoxDecoration(
                      color: ColorName.primary,
                      borderRadius: BorderRadius.circular(100.0),
                      border: Border.all(color: ColorName.primary)),
                  child: const Center(
                    child: Text(
                      'Detail',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
