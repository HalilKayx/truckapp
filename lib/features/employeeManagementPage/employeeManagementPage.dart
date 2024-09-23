import 'package:flutter/material.dart';
import '../../widgets/managementScaffold.dart';
import 'components/employeeManagementCard.dart';

class EmployeeManagementPage extends StatelessWidget {
  const EmployeeManagementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ManagementScaffold(
        managementPage: EmployeeManagementCard(),
        appBarText: 'Çalışan Yönetimi',
        appBarAddIconOnPressed: () {
          Navigator.pushNamed(context, '/EmployeeAdd');
        },
        popEverItem: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(onPressed: () {}, child: Text('A-Z Sırala')),
            TextButton(onPressed: () {}, child: Text('Z-A Sırala')),
            TextButton(onPressed: () {}, child: Text('Yöneticileri Göster')),
            TextButton(onPressed: () {}, child: Text('Şöförleri Göster')),
          ],
        ));
  }
}
