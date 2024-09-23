import 'dart:async';

import 'package:flutter/material.dart';

import '../constants/MainConstants.dart';

DateTime dateNow = DateTime.now();

Future<DateTime?> selectDate(
    BuildContext context, Function(DateTime) setStateCallback) async {
  final DateTime? picked = await showDatePicker(
    locale: const Locale("tr"),
    context: context,
    initialDate: dateNow,
    firstDate: DateTime(dateNow.year - 20),
    lastDate: DateTime(dateNow.year + 1),
    builder: (context, child) {
      return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.light(
              primary: Colors.white,
              onPrimary: MainConstants.mainColor,
              surface: MainConstants.mainColor,
              onSurface: Colors.white, //
            ),
          ),
          child: child!);
    },
  );
  if (picked != null && picked != dateNow) {
    setStateCallback(picked);
  }
  return picked;
}
