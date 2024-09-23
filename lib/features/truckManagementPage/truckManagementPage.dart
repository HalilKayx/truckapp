import 'package:flutter/material.dart';
import 'package:truckapp/features/truckManagementPage/components/truckManagementCard.dart';
import 'package:truckapp/widgets/managementScaffold.dart';

class TruckManagementPage extends StatelessWidget {
  const TruckManagementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ManagementScaffold(
        managementPage: const TruckManagementCard(),
        appBarText: 'Kamyon Yönetimi',
        appBarAddIconOnPressed: () {
          Navigator.pushNamed(context, '/TruckAdd');
        },
        popEverItem: Column(
          children: [
            TextButton(onPressed: () {}, child: Text('A-Z Sırala')),
            TextButton(onPressed: () {}, child: Text('Z-A Sırala')),
            TextButton(onPressed: () {}, child: Text('Bakımı Yaklaşan')),
            TextButton(onPressed: () {}, child: Text('Bakımı Yeni ')),
          ],
        ));
  }
}
