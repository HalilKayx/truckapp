import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  IconButtonWidget({
    required void Function()? this.OnPressed,
    super.key, required this.IconSize, required this.icon,this.Iconcolor,
  });
  final double IconSize;
  void Function()? OnPressed;
  final IconData icon;
  final Color? Iconcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: IconSize,
      height: IconSize,
      child: IconButton(
          style: ButtonStyle(
              overlayColor: MaterialStatePropertyAll(Colors.green.shade100)),
          focusColor: Colors.green,
          //iconSize: IconSize,
          alignment: Alignment.center,
          onPressed: OnPressed,
          icon: Icon(icon),color: Iconcolor,),
    );
  }
}
