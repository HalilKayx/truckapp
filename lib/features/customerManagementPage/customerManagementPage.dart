import 'package:flutter/material.dart';
import 'package:truckapp/widgets/managementScaffold.dart';

import 'components/customerManagementCard.dart';

class CustomerManagementPage extends StatelessWidget {
  const CustomerManagementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ManagementScaffold(
      managementPage: const CustomerManagementCard(),
      appBarText: 'Müşteri Yönetimi',
      appBarAddIconOnPressed: () {
        Navigator.pushNamed(context, '/CustomerAdd');
      },
        popEverItem: Column(
          children: [
            TextButton(onPressed: () {}, child: Text('A-Z Sırala')),
            TextButton(onPressed: () {}, child: Text('Z-A Sırala')),
            TextButton(onPressed: () {}, child: Text('Yeniden, Eskiye')),
            TextButton(onPressed: () {}, child: Text('Eskiden, Yeniye')),
          ],
        )
    );
  }
}
