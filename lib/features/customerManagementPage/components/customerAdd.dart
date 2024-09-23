import 'package:flutter/material.dart';
import 'package:truckapp/widgets/adminDrawerWidget.dart';
import 'package:truckapp/widgets/appBarWidget.dart';
import 'package:truckapp/widgets/textFormFieldWidget.dart';

import '../../../widgets/bottomNavigatorBarWidgets/bottomNavigatorBarWidget.dart';

class CustomerAdd extends StatelessWidget {
  const CustomerAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(appBarText: 'Yeni Müşteri Ekle'),
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
                      PrefixIcon: Icons.account_box_rounded,
                      LabelText: 'Adı',
                      OnSaved: (p0) {},
                      Validator: (p0) {},
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextFormFieldWidget(
                      PrefixIcon: Icons.account_box_rounded,
                      LabelText: 'SoyAdı',
                      OnSaved: (p0) {},
                      Validator: (p0) {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              TextFormFieldWidget(
                PrefixIcon: Icons.phone,
                LabelText: 'Telefon Numarası',
                OnSaved: (p0) {},
                Validator: (p0) {},
              ),
              Row(
                children: [

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
