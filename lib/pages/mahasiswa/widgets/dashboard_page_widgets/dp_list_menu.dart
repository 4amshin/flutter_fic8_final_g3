import 'package:flutter/material.dart';
import 'package:flutter_fic8_final_g3/common/constants/images.dart';
import 'package:flutter_fic8_final_g3/pages/mahasiswa/widgets/dashboard_page_widgets/dp_menu.dart';

class DpListMenu extends StatelessWidget {
  const DpListMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<DpMenu> dummyData = [
      DpMenu(imgUrl: Images.khs, label: "Kartu Hasil Studi"),
      DpMenu(imgUrl: Images.jk, label: "Jadwal Kuliah"),
      DpMenu(imgUrl: Images.nm, label: "Nilai Matkul"),
    ];
    return Expanded(
      child: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, index) {
          final item = dummyData[index];
          return DpMenu(
            imgUrl: item.imgUrl,
            label: item.label,
          );
        },
      ),
    );
  }
}
