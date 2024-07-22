import 'package:flutter/material.dart';
import 'package:grapper/components/appbar.dart';
import 'package:grapper/components/hashtag.dart';
import 'package:grapper/utils/grapper_color.dart';
import 'package:grapper/views/recommend/recommend_page.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool touch = true;
  int hashtagIndex = 1;
  final List<String> hashtags = ['핫딜', '추천', '인디게임', '매드무비'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Column(
                children: <Widget>[
                  const GrapperAppbar(
                    text: '테스트',
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      hashtags.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            hashtagIndex = index;
                          });
                        },
                        child: GrapperHashtag(
                          text: hashtags[index],
                          isSelected: hashtagIndex == index,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                touch = false;
              }),
              child: touch
                  ? Container(
                      margin: const EdgeInsets.only(top: 12),
                      decoration: const BoxDecoration(color: Colors.white),
                      height: 50,
                    )
                  : Container(
                      margin: const EdgeInsets.only(top: 5),
                      height: 14,
                      color: GrapperColorGrey.darkHover,
                    ),
            ),
            const RecommendPage(),
          ],
        ),
      ),
    );
  }
}
