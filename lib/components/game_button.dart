import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grapper/utils/grapper_color.dart';
import 'package:grapper/utils/grapper_font.dart';
import 'package:grapper/utils/grapper_icon.dart';

class GameButton extends StatelessWidget {
  const GameButton({
    super.key,
    required this.gameName,
    required this.price,
    required this.icon,
    required this.isDiscount,
  });
  final String gameName;
  final String price;
  final GrapperIcon icon;
  final isDiscount;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 160,
            width: 160,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GrapperText(
                text: gameName,
                grapperFont: GrapperFonts.pretendard_400,
                size: 14,
                color: Colors.white,
              ),
              Row(
                children: [
                  isDiscount
                      ? Container(
                          margin: const EdgeInsets.only(right: 6),
                          child: const GrapperText(
                            text: '할인가',
                            grapperFont: GrapperFonts.pretendard_600,
                            size: 14,
                            color: Colors.white,
                          ),
                        )
                      : const Text(''),
                  GrapperText(
                    text: price,
                    grapperFont: GrapperFonts.pretendard_600,
                    size: 14,
                    color: GrapperColorRed.normal,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  icon
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
