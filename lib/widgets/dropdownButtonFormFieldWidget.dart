import 'package:flutter/material.dart';
import 'package:truckapp/constants/MainConstants.dart';

class DropDownButtonFormFieldWidget extends StatelessWidget {
  const DropDownButtonFormFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(icon: Container(),
      decoration: InputDecoration(
        border: MainConstants.textFieldInputBorder,
        prefixIcon: Icon(Icons.fire_truck,
            size: 35, color: MainConstants.mainColor),
        focusedBorder: OutlineInputBorder(
            borderRadius:
            const BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
                width: 3, color: MainConstants.mainColor)),
        labelText: 'Kamyon Plakası',
        labelStyle:
        const TextStyle(color: Colors.grey, fontSize: 13),
        contentPadding: const EdgeInsets.all(15),
        floatingLabelStyle: TextStyle(
            color: MainConstants.mainColor,
            fontWeight: FontWeight.bold),
      ),
      items: <String>[
        'Kamyon Seçiniz',
        '34 KGV 78',
        '34 KGV 79'
      ].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,style: const TextStyle(fontSize: 13)),
        );
      }).toList(),
      value: 'Kamyon Seçiniz',
      onChanged: (value) {},
    );
  }
}