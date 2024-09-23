import 'package:flutter/material.dart';
import 'package:truckapp/widgets/adminDrawerWidget.dart';
import 'package:truckapp/widgets/appBarWidget.dart';
import 'package:truckapp/widgets/datePickerWidget.dart';
import 'package:truckapp/widgets/textFormFieldWidget.dart';

import '../../../config/datePicker.dart';
import '../../../widgets/bottomNavigatorBarWidgets/bottomNavigatorBarWidget.dart';
import '../../../widgets/dropdownButtonFormFieldWidget.dart';
import '../../../widgets/elevatedButtonWidget.dart';

class WorkAdd extends StatelessWidget {
  const WorkAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(appBarText: 'Yeni İş Ekle'),
      drawer: AdminDrawer(),
      bottomNavigationBar: const BottomNavigatorBarWidget(),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: TextFormFieldWidget(
                      PrefixIcon: Icons.add_box_outlined,
                      LabelText: 'İş Adı',
                      OnSaved: (p0) {},
                      Validator: (p0) {},
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextFormFieldWidget(
                      PrefixIcon: Icons.numbers,
                      LabelText: 'İş Kodu',
                      OnSaved: (p0) {},
                      Validator: (p0) {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: DropDownButtonFormFieldWidget(),
                  ),
                  SizedBox(width: 15),
                  DatePickerWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


