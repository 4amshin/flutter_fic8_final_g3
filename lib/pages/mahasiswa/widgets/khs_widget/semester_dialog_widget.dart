import 'package:flutter/material.dart';

import '../../../../common/constants/colors.dart';

class SemesterDialogWidget extends StatelessWidget {
  const SemesterDialogWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      surfaceTintColor: Colors.white,
      actionsPadding: const EdgeInsets.all(20),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      content: Padding(
        padding: const EdgeInsets.symmetric(vertical: 23.0, horizontal: 17),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              height: 32,
              decoration: BoxDecoration(
                color: ColorName.primary,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Center(
                child: Text(
                  'Semester 1',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 13.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 32,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: ColorName.primary)),
              child: const Center(
                child: Text(
                  'Semester 2',
                  style: TextStyle(
                    color: ColorName.primary,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 13.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 32,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: ColorName.primary)),
              child: const Center(
                child: Text(
                  'Semester 3',
                  style: TextStyle(
                    color: ColorName.primary,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 13.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 32,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: ColorName.primary)),
              child: const Center(
                child: Text(
                  'Semester 4',
                  style: TextStyle(
                    color: ColorName.primary,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 13.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 32,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: ColorName.primary)),
              child: const Center(
                child: Text(
                  'Semester 5',
                  style: TextStyle(
                    color: ColorName.primary,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 13.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 32,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: ColorName.primary)),
              child: const Center(
                child: Text(
                  'Semester 6',
                  style: TextStyle(
                    color: ColorName.primary,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 13.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      actionsAlignment: MainAxisAlignment.end,
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: 23,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100.0),
                    border: Border.all(color: ColorName.greyBoxBorder)),
                child: const Center(
                  child: Text(
                    'Batal',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorName.primary,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
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
                    'Pilih',
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
        ),
      ],
    );
  }
}
