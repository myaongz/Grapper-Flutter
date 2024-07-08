import 'package:flutter/material.dart';
import 'package:grapper/utils/grapper_font.dart';
import 'package:grapper/utils/grapper_icon.dart';

class GrapperAppbar extends StatelessWidget {
  const GrapperAppbar({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GrapperText(
            text: text,
            grapperFont: GrapperFonts.pretendard_700,
            size: 24,
            color: Colors.white,
          ),
          Container(
            decoration: const BoxDecoration(),
            child: const Row(
              children: [
                GrapperIcon(
                  icon: GrapperIcons.bell,
                  color: Colors.white,
                  size: 24,
                ),
                SizedBox(
                  width: 22,
                ),
                GrapperIcon(
                  icon: GrapperIcons.user,
                  color: Colors.white,
                  size: 24,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
