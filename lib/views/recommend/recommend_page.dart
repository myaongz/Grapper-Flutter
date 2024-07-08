import 'package:flutter/material.dart';
import 'package:grapper/components/appbar.dart';
import 'package:grapper/components/hashtag.dart';

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
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GrapperHashtag(text: '핫딜'),
                  GrapperHashtag(
                    text: '추천',
                    isSelected: true,
                  ),
                  GrapperHashtag(text: '인디게임'),
                  GrapperHashtag(text: '매드무비'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
