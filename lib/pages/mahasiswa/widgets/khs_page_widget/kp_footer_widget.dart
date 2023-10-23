import 'package:flutter/material.dart';
import 'package:flutter_fic8_final_g3/pages/mahasiswa/widgets/khs_page_widget/kp_footer_item.dart';

import '../../../../common/constants/colors.dart';

class KpFooterWidget extends StatelessWidget {
  const KpFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorName.greyBox,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: const Column(
        children: [
          KpFooterItem(
            title: 'Jadwal SKS Diambil',
            value: "22",
          ),
          Divider(
            color: Colors.white,
            thickness: 2,
          ),
          KpFooterItem(
            title: 'Jumalah Matkul Diambil',
            value: "7",
          ),
          Divider(
            color: Colors.white,
            thickness: 2,
          ),
          KpFooterItem(
            title: 'Jadwal Mutu',
            value: "58",
          ),
        ],
      ),
    );
  }
}
