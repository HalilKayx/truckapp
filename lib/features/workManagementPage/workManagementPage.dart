import 'package:flutter/material.dart';
import 'package:truckapp/features/workManagementPage/components/workManagementCard.dart';
import 'package:truckapp/widgets/managementScaffold.dart';

class WorkManagementPage extends StatelessWidget {
  const WorkManagementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ManagementScaffold(
      managementPage: WorkManagementCard(),
      appBarText: 'İş Yönetimi',
      appBarAddIconOnPressed: () {
        Navigator.pushNamed(context, '/WorkAdd');
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
