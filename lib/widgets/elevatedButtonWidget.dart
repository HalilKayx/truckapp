import 'package:flutter/material.dart';
import 'package:truckapp/constants/mainConstants.dart';

class ElevatedButtonWidget extends StatelessWidget {
  ElevatedButtonWidget({
    required void Function()? this.OnPressed,
    super.key,
    required this.butonText,
    this.FontSizeText,
    this.TextIcon,
    this.ButonVertical,
  });

  void Function()? OnPressed;
  final String butonText;
  final double? FontSizeText;
  final IconData? TextIcon;
  final double? ButonVertical;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: OnPressed,
      style: ButtonStyle(
          padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
              horizontal: 30, vertical: ButonVertical ?? 7)),
          backgroundColor: MaterialStatePropertyAll(MainConstants.mainColor),
          shape: const MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)))),
          elevation: const MaterialStatePropertyAll(0),
          overlayColor: MaterialStatePropertyAll(Colors.green.shade400)),
      child: TextIcon != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.date_range, color: Colors.white, size: 20),
                const SizedBox(
                  width: 5,
                ),
                Text(butonText,
                    style: TextStyle(
                        color: Colors.white, fontSize: FontSizeText ?? 19)),
              ],
            )
          : Text(butonText,
              style:
                  TextStyle(color: Colors.white, fontSize: FontSizeText ?? 19)),
    );
  }
}
