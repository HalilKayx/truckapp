import 'package:flutter/material.dart';
import 'package:truckapp/widgets/adminDrawerWidget.dart';
import 'package:truckapp/widgets/appBarWidget.dart';
import 'package:truckapp/widgets/textFormFieldWidget.dart';

import '../../../widgets/bottomNavigatorBarWidgets/bottomNavigatorBarWidget.dart';

class TruckAdd extends StatelessWidget {
  const TruckAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(appBarText: 'Yeni Kamyon Ekle'),
      drawer: AdminDrawer(),
      bottomNavigationBar: const BottomNavigatorBarWidget(),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 15),
              TextFormFieldWidget(
                PrefixIcon: Icons.time_to_leave,
                LabelText: 'Araç Plakası',
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
