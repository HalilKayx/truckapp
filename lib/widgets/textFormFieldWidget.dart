import 'package:flutter/material.dart';
import 'package:truckapp/constants/mainConstants.dart';

class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget(
      {String,
      super.key,
      required this.PrefixIcon,
      required this.LabelText,
      this.PTextInputType,
      this.ObscureText,
      required this.OnSaved,
      required this.Validator});

  final IconData PrefixIcon;
  final String LabelText;
  final TextInputType? PTextInputType;
  final bool? ObscureText;
  void Function(String?)? OnSaved;
  String? Function(String?)? Validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onSaved: OnSaved,
        validator: (value) {},
        obscureText: ObscureText ?? false,
        keyboardType: PTextInputType ?? TextInputType.none,
        decoration: InputDecoration(

            border: MainConstants.textFieldInputBorder,
            prefixIcon:
                Icon(PrefixIcon, size: 35, color: MainConstants.mainColor),
            focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                borderSide:
                    BorderSide(width: 3, color: MainConstants.mainColor)),
            labelText: LabelText,
            labelStyle: const TextStyle(color: Colors.grey,fontSize: 13),
            contentPadding: const EdgeInsets.all(15),
            floatingLabelStyle: TextStyle(
                color: MainConstants.mainColor, fontWeight: FontWeight.bold)));
  }
}
