import 'package:flutter/material.dart';
import 'package:grapper/utils/grapper_color.dart';
import 'package:grapper/utils/grapper_text.dart';

class GrapperHashtag extends StatelessWidget {
  const GrapperHashtag({
    super.key,
    required this.text,
    this.isSelected = false,
  });
  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      alignment: Alignment.center,
      padding: isSelected ? const EdgeInsets.symmetric(horizontal: 20) : const EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: isSelected ? GrapperColorRed.normal : Colors.black,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: GrapperText(
        text: '#$text',
        grapperFont: GrapperFonts.pretendard_500,
        size: 17,
        color: Colors.white,
      ),
    );
  }
}
