import 'package:flutter/material.dart';
import 'package:flutter_fic8_final_g3/common/constants/custom_navigation.dart';

import '../../../common/constants/colors.dart';
import '../widgets/khs_page_widget/kp_dropdown_widget.dart';
import '../widgets/khs_page_widget/kp_footer_widget.dart';
import '../widgets/khs_page_widget/kp_header_widget.dart';
import '../widgets/khs_page_widget/kp_table_row_widget.dart';

class KhsPage extends StatelessWidget {
  const KhsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> dummyData = [
      {"id": "1", "code": "101", "subject": "Pengantar Teknologi Informasi"},
      {"id": "2", "code": "102", "subject": "Pendidikan Akhlak"},
      {"id": "3", "code": "103", "subject": "Web Programming"},
      {"id": "4", "code": "104", "subject": "Basis Data"},
      {"id": "5", "code": "105", "subject": "Manajemen Sistem Informasi"},
      {"id": "6", "code": "106", "subject": "Bahasa Inggris"},
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigate.pop(),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: ColorName.primary,
        centerTitle: true,
        title: const Text(
          "Kartu Hasil Studi",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          const KpHeaderWidget(),
          const SizedBox(height: 40),
          const KpSemesterDropdown(title: 'Semester 5'),
          const SizedBox(height: 30),
          Container(
            decoration: BoxDecoration(
              color: ColorName.greyBox,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: ColorName.greyBoxBorder, width: 1),
            ),
            child: Table(
              border: TableBorder.all(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              columnWidths: const {
                0: FlexColumnWidth(1),
                1: FlexColumnWidth(1),
                2: FlexColumnWidth(3),
              },
              children: [
                const TableRow(
                  children: [
                    KpTableRowWidget(
                      height: 50,
                      title: "No",
                      fontWeight: FontWeight.w700,
                    ),
                    KpTableRowWidget(
                      height: 50,
                      title: "Kode",
                      fontWeight: FontWeight.w700,
                    ),
                    KpTableRowWidget(
                      height: 50,
                      title: "Mata Kuliah",
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
                for (var rowData in dummyData)
                  TableRow(
                    children: [
                      KpTableRowWidget(
                        title: rowData["id"],
                        fontWeight: FontWeight.w700,
                      ),
                      KpTableRowWidget(title: rowData["code"]),
                      KpTableRowWidget(title: rowData["subject"]),
                    ],
                  ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          const KpFooterWidget(),
        ],
      ),
    );
  }
}
