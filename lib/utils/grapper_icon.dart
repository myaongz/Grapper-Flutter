import 'package:flutter/material.dart';

class GrapperIcons {
  static const String bitcoin = 'assets/icons/bitcoin-icons_verify-filled.png';
  static const String games = 'assets/icons/bitcoin-icons_verify-filled.png';
  static const String moon = 'assets/icons/bitcoin-icons_verify-filled.png';
  static const String bell = 'assets/icons/bitcoin-icons_verify-filled.png';
  static const String editPencil =
      'assets/icons/bitcoin-icons_verify-filled.png';
  static const String heart = 'assets/icons/bitcoin-icons_verify-filled.png';
  static const String arrowUp = 'assets/icons/bitcoin-icons_verify-filled.png';
  static const String search = 'assets/icons/bitcoin-icons_verify-filled.png';
  static const String user = 'assets/icons/bitcoin-icons_verify-filled.png';
  static const String share = 'assets/icons/bitcoin-icons_verify-filled.png';
  static const String steam = 'assets/icons/bitcoin-icons_verify-filled.png';
  static const String users = 'assets/icons/bitcoin-icons_verify-filled.png';
  static const String epicgames =
      'assets/icons/bitcoin-icons_verify-filled.png';
  static const String metacritic =
      'assets/icons/bitcoin-icons_verify-filled.png';
  static const String streamlineCrown =
      'assets/icons/bitcoin-icons_verify-filled.png';
}

class GrapperIcon extends StatelessWidget {
  const GrapperIcon({
    super.key,
    required this.icon,
  });
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Image.asset(icon);
  }
}
