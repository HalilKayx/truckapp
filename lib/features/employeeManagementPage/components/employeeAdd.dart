import 'package:flutter/material.dart';
import 'package:truckapp/widgets/adminDrawerWidget.dart';
import 'package:truckapp/widgets/appBarWidget.dart';
import 'package:truckapp/widgets/datePickerWidget.dart';
import 'package:truckapp/widgets/dropdownButtonFormFieldWidget.dart';
import 'package:truckapp/widgets/elevatedButtonWidget.dart';
import 'package:truckapp/widgets/textFormFieldWidget.dart';

import '../../../config/datePicker.dart';
import '../../../widgets/bottomNavigatorBarWidgets/bottomNavigatorBarWidget.dart';

class EmployeeAdd extends StatefulWidget {
  const EmployeeAdd({Key? key}) : super(key: key);

  @override
  State<EmployeeAdd> createState() => _EmployeeAddState();
}

class _EmployeeAddState extends State<EmployeeAdd> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(appBarText: 'Yeni Çalışan Ekle'),
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
                      PTextInputType: TextInputType.name,
                      PrefixIcon: Icons.account_box_rounded,
                      LabelText: 'Adı',
                      OnSaved: (p0) {},
                      Validator: (p0) {},
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextFormFieldWidget(
                      PTextInputType: TextInputType.name,
                      PrefixIcon: Icons.account_box_rounded,
                      LabelText: 'Soy Adı',
                      OnSaved: (p0) {},
                      Validator: (p0) {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              TextFormFieldWidget(
                PTextInputType: TextInputType.number,
                PrefixIcon: Icons.phone,
                LabelText: 'Telefon Numarası',
                OnSaved: (p0) {},
                Validator: (p0) {},
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
