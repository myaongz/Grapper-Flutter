import 'package:flutter/material.dart';
import 'package:grapper/utils/grapper_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Center(
            child: GrapperIcon(icon: GrapperIcons.arrowUp),
          ),
        ],
      ),
    );
  }
}
