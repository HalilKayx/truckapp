import 'package:flutter/material.dart';

class NavigatorItem extends StatelessWidget {
  const NavigatorItem({
    super.key,
    required this.itemText,
    required this.itemIcon,
    required this.itemOnTap,
  });

  final String itemText;
  final IconData itemIcon;
  final void Function() itemOnTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: itemOnTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(itemIcon, color: Colors.white,size: 23),
          const SizedBox(height: 1),
          Text(
            itemText,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold,fontSize: 12),
          ),
        ],
      ),
    );
  }
}