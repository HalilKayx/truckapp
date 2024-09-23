import 'package:flutter/material.dart';
import 'package:truckapp/widgets/appBarWidget.dart';
import 'package:truckapp/widgets/bottomNavigatorBarWidgets/bottomNavigatorBarWidget.dart';

import 'adminDrawerWidget.dart';

class ManagementScaffold extends StatelessWidget {
  ManagementScaffold(
      {super.key,
      required this.managementPage,
      required this.appBarText,
      required this.popEverItem,
      required this.appBarAddIconOnPressed});

  void Function() appBarAddIconOnPressed;
  final Widget managementPage;
  final String appBarText;
  final Widget popEverItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const AdminDrawer(),
        bottomNavigationBar: const BottomNavigatorBarWidget(),
        appBar: AppBarWidget(
            appBarText: appBarText,
            showActions: true,
            popEverItem: popEverItem,
            appBarAddIconOnPressed: appBarAddIconOnPressed),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return managementPage;
          },
        ));
  }
}
