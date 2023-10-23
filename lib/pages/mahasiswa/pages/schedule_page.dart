import 'package:flutter/material.dart';
import 'package:flutter_fic8_final_g3/common/constants/custom_navigation.dart';
import 'package:flutter_fic8_final_g3/pages/mahasiswa/widgets/schedule_page_widget/sp_dropdown_schedule_widget.dart';

import '../../../common/constants/colors.dart';
import '../widgets/schedule_page_widget/sp_card_widget.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigate.pop(),
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        backgroundColor: ColorName.primary,
        centerTitle: true,
        title: const Text(
          "Jadwal Kuliah",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 24,
        ),
        children: [
          const SpScheduleDropdown(title: 'Jumat'),
          const SizedBox(height: 30),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.2,
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 8,
                  ),
                  child: SpCardWidget(
                    matkul: "Pemrograman PHP",
                    dosen: "Muh. Akram Hamzah, M.Kom",
                    ruangan: "Lab 1",
                    jamMulai: "08:00",
                    jamSelesai: "10:00",
                    onDetail: () {},
                  ),
                );
              },
              separatorBuilder: (context, index) =>
                  Divider(color: ColorName.greyBox),
            ),
          ),
        ],
      ),
    );
  }
}
