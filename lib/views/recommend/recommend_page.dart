import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grapper/components/appbar.dart';
import 'package:grapper/components/game_button.dart';
import 'package:grapper/components/hashtag.dart';
import 'package:grapper/utils/grapper_color.dart';
import 'package:grapper/utils/grapper_font.dart';
import 'package:grapper/utils/grapper_icon.dart';

class RecommendPage extends StatelessWidget {
  const RecommendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        left: false,
        right: false,
        child: Column(
          children: [
            const Padding(
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
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12, bottom: 25),
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GrapperText(
                        text: '이런 게임은 어떠세요?',
                        grapperFont: GrapperFonts.pretendard_600,
                        size: 20,
                        color: Colors.white,
                      ),
                      GrapperText(
                        text: '더보기',
                        grapperFont: GrapperFonts.pretendard_500,
                        size: 12,
                        color: GrapperColorGrey.lightActive,
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GameButton(
                        gameName: 'PUBG: BATTLEGRONDS',
                        price: '15,400',
                        icon: GrapperIcon(
                          icon: GrapperIcons.steam,
                          color: Color(0xff5f5f5f),
                          size: 16,
                        ),
                        isDiscount: false,
                      ),
                      GameButton(
                        gameName: 'OVERWATCH',
                        price: '9,400',
                        icon: GrapperIcon(
                          icon: GrapperIcons.epicgames,
                          color: Color(0xff5f5f5f),
                          size: 16,
                        ),
                        isDiscount: true,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
