import 'package:flutter/material.dart';

import '../config/datePicker.dart';
import 'elevatedButtonWidget.dart';

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({
    super.key,
  });

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: ElevatedButtonWidget(
          OnPressed: () {
            selectDate(
              context,
                  (selectedDate) {
                setState(() {
                  dateNow = selectedDate;
                  print('$dateNow');
                });
              },
            );
          },
          butonText: 'Başlama Tarihi',
          ButonVertical: 15,
          FontSizeText: 13,
          TextIcon: Icons.date_range,
        ));
  }
}