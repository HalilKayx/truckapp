import 'package:flutter/material.dart';

import 'iconButtonWidget.dart';
class ListTileWidget extends StatelessWidget {
  ListTileWidget({
    super.key,required this.icon, required this.text,required this.OnPressed,this.subtitle
  });
final IconData icon;
final String text;
void Function()? OnPressed;
  Widget? subtitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      subtitle: subtitle,
      leading: Icon(icon,size: 20,),
      title:  Text(text,style: TextStyle(fontSize: 14),),
      onTap: OnPressed,
    );
  }
}