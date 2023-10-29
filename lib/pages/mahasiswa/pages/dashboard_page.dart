import 'package:flutter/material.dart';
import 'package:flutter_fic8_final_g3/common/constants/images.dart';
import 'package:flutter_fic8_final_g3/common/widgets/svg_icon.dart';
import 'package:flutter_fic8_final_g3/pages/mahasiswa/widgets/dashboard_page_widgets/dp_app_bar.dart';
import 'package:flutter_fic8_final_g3/pages/mahasiswa/widgets/dashboard_page_widgets/dp_card.dart';
import 'package:flutter_fic8_final_g3/pages/mahasiswa/widgets/dashboard_page_widgets/dp_list_menu.dart';
import 'package:flutter_fic8_final_g3/pages/mahasiswa/widgets/dashboard_page_widgets/dp_list_title.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: SvgIcon(
              iconUrl: Images.curvedLine,
              color: Colors.grey.withOpacity(0.15),
            ),
          ),
          const Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            right: 0,
            child: SafeArea(
              minimum: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: Column(
                children: [
                  DpAppBar(),
                  SizedBox(height: 20),
                  DpCard(),
                  SizedBox(height: 20),
                  DpListTitle(),
                  SizedBox(height: 10),
                  DpListMenu(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
