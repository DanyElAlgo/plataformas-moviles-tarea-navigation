import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/app_theme.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBack;

  const AppHeader({this.title = '', this.showBack = true, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      automaticallyImplyLeading: showBack,
      backgroundColor: Colors.white,
      foregroundColor: AppColors.purple,
      elevation: 1,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
