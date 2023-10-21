// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_fic8_final_g3/common/constants/colors.dart';
import 'package:flutter_fic8_final_g3/common/widgets/custom_button.dart';

class PpLogoutButton extends StatelessWidget {
  final void Function()? onTap;
  const PpLogoutButton({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomButton(
        onTap: onTap,
        backgroundColor: ColorName.primary,
        labelColor: Colors.white,
        label: "Logout",
      ),
    );
  }
}
