import 'package:flutter/material.dart';
import 'package:grapper/components/appbar.dart';
import 'package:grapper/components/game_button.dart';
import 'package:grapper/components/hashtag.dart';
import 'package:grapper/utils/grapper_color.dart';
import 'package:grapper/utils/grapper_text.dart';
import 'package:grapper/utils/grapper_icon.dart';

class RecommendPage extends StatelessWidget {
  const RecommendPage({super.key});

  Widget space() {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: GrapperText(
            text: '원하는 상품을 추천받지 못하셨나요?\n추천 정보를 등록 하여 원하는 게임을 찾아보세요!',
            grapperFont: GrapperFonts.pretendard_500,
            size: 15,
            color: GrapperColorGrey.lightActive,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.center,
          height: 36,
          width: 74,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
            color: GrapperColorRed.dark,
          ),
          child: const GrapperText(
            text: '등록하기',
            grapperFont: GrapperFonts.pretendard_600,
            size: 14,
            color: GrapperColorGrey.light,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        left: false,
        right: false,
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  GrapperAppbar(
                    text: '테스트',
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
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
              decoration: const BoxDecoration(color: Colors.white),
              height: 50,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      const Row(
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
                      const SizedBox(height: 12),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
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
                      ),
                      const SizedBox(height: 25),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GrapperText(
                            text: '요즘 핫한 인디게임',
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
                      const SizedBox(height: 12),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          GameButton(
                            gameName: 'PUBG: BATTLEGRONDS',
                            price: '무료',
                            icon: GrapperIcon(
                              icon: GrapperIcons.steam,
                              color: Color(0xff5f5f5f),
                              size: 16,
                            ),
                            isDiscount: false,
                          ),
                          GameButton(
                            gameName: 'OVERWATCH',
                            price: '무료',
                            icon: GrapperIcon(
                              icon: GrapperIcons.epicgames,
                              color: Color(0xff5f5f5f),
                              size: 16,
                            ),
                            isDiscount: false,
                          ),
                        ],
                      ),
                      space(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
