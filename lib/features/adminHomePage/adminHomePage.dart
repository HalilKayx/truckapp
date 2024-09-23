import 'package:flutter/material.dart';
import 'package:truckapp/constants/mainConstants.dart';

import '../../widgets/bottomNavigatorBarWidgets/bottomNavigatorBarWidget.dart';
import '../../widgets/adminDrawerWidget.dart';
import 'components/adminHomePageTop.dart';
import 'components/adminHomeTable.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigatorBarWidget(),
      drawer: const AdminDrawer(),
      body: ListView(
        children: [
          const AdminHomePageTop(),
          const SizedBox(height: 15),
          //Icon(Icons.diversity_2),
          Text('Aktif Yolculuklar',
              style: MainConstants.titleStyle, textAlign: TextAlign.center),
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: AdminHomeTable(),
          )
        ],
      ),
    );
  }
}


