import 'package:flutter/material.dart';
import 'package:flutter_fic8_final_g3/pages/mahasiswa/widgets/schedule_widget/dropdown_schedule_widget.dart';

import '../../../common/constants/colors.dart';
import '../widgets/schedule_widget/card_widget.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
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
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        children: [
          const ScheduleDropdown(title: 'Jumat'),
          const SizedBox(height: 30),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.2,
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: CardWidget(),
              ),
              separatorBuilder: (context, index) =>
              const Divider(color: ColorName.greyBox),
              itemCount: 12,
            ),
          ),
        ],
      ),
    );
  }
}
