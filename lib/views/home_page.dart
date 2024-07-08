import 'package:flutter/material.dart';
import 'package:grapper/utils/grapper_color.dart';
import 'package:grapper/utils/grapper_font.dart';
import 'package:grapper/utils/grapper_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          GrapperIcon(
            icon: GrapperIcons.arrowUp,
          ),
          GrapperText(
            text: 'hello world',
            grapperFont: GrapperFonts.pretendard_700,
            size: 30,
            color: GrapperColorRed.normal,
          )
        ],
      ),
    );
  }
}
