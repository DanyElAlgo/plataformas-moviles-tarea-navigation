import 'package:flutter/material.dart';

class ItemInfo extends StatelessWidget {
  final IconData icon;
  final String text;
  final MainAxisAlignment? mainAxisAlignment;
  const ItemInfo({
    super.key,
    required this.icon,
    required this.text,
    this.mainAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
      children: [Icon(icon), Text(text)],
    );
  }
}
