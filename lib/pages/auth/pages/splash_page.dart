import 'package:flutter/material.dart';
import 'package:flutter_fic8_final_g3/common/constants/colors.dart';
import 'package:flutter_fic8_final_g3/common/constants/images.dart';
import 'package:flutter_fic8_final_g3/common/widgets/svg_image.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgImage(
              iconUrl: Images.splash,
              height: 200,
            ),
            const SizedBox(height: 50),
            Text(
              "SIAKAD",
              style: TextStyle(
                fontSize: 25.0,
                color: ColorName.text,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Sistem Akademik Universitas\nCokroaminoto Palopo",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
