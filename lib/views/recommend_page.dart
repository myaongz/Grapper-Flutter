import 'package:flutter/material.dart';
import 'package:grapper/components/appbar.dart';

class RecommendPage extends StatelessWidget {
  const RecommendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              GrapperAppbar(
                text: '테스트',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
