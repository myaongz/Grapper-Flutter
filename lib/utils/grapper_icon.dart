import 'package:flutter/material.dart';

class GrapperIcons {
  static const String bitcoin = 'assets/icons/bitcoin-icons_verify-filled.png';
  static const String games = 'assets/icons/game-icons_pistol-gun.png';
  static const String moon = 'assets/icons/iconamoon_comment-thin.png';
  static const String bell = 'assets/icons/iconoir_bell-notification.png';
  static const String editPencil = 'assets/icons/iconoir_edit-pencil.png';
  static const String heart = 'assets/icons/iconoir_heart.png';
  static const String arrowUp = 'assets/icons/iconoir_nav-arrow-up.png';
  static const String search = 'assets/icons/iconoir_search.png';
  static const String user = 'assets/icons/iconoir_user.png';
  static const String share = 'assets/icons/ion_share-outline.png';
  static const String steam = 'assets/icons/mdi_steam.png';
  static const String users = 'assets/icons/ph_users.png';
  static const String epicgames = 'assets/icons/simple-icons_epicgames.png';
  static const String metacritic = 'assets/icons/simple-icons_metacritic.png';
  static const String streamlineCrown =
      'assets/icons/streamline_crown-solid.png';
}

class GrapperIcon extends StatelessWidget {
  const GrapperIcon(
      {super.key, required this.icon, required this.color, required this.size});
  final String icon;
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      icon,
      color: color,
      height: size,
      width: size,
    );
  }
}
