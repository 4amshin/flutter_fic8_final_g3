import 'package:flutter/material.dart';

import '../../../../common/constants/colors.dart';
import 'sp_day_selection.dart';

class SpScheduleDropdown extends StatefulWidget {
  const SpScheduleDropdown({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<SpScheduleDropdown> createState() => _SpScheduleDropdownState();
}

class _SpScheduleDropdownState extends State<SpScheduleDropdown> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _showSemester(),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: ColorName.greyBox,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: ColorName.greyBoxBorder, width: 1),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                widget.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: ColorName.textGrey,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 13.0,
                ),
              ),
            ),
            const Icon(Icons.keyboard_arrow_down, color: ColorName.textGrey),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }

  void _showSemester() {
    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return SpDaySelection(key: widget.key);
      },
    );
  }
}
