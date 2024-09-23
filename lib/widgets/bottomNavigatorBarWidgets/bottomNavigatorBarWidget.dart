import 'package:flutter/material.dart';
import 'package:truckapp/widgets/bottomNavigatorBarWidgets/navigatorBarItem.dart';
import '../../constants/mainConstants.dart';
class BottomNavigatorBarWidget extends StatelessWidget {
  const BottomNavigatorBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(55.0),
        topRight: Radius.circular(55.0),
      ),
      child: BottomAppBar(
        elevation: 0,
        height: 80,
        color: MainConstants.mainColor,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              NavigatorItem(
                itemText: 'Çalışanlar',
                itemIcon: Icons.group,
                itemOnTap: () {
                  Navigator.pushNamed(context, '/EmployeeManagement');
                },
              ),
              NavigatorItem(
                itemText: 'İşler',
                itemIcon: Icons.work,
                itemOnTap: () {
                  Navigator.pushNamed(context, '/WorkManagement');
                },
              ),
              NavigatorItem(
                itemText: 'Müşteriler',
                itemIcon: Icons.handshake,
                itemOnTap: () {
                  Navigator.pushNamed(context, '/CustomerManagement');
                },
              ),
              NavigatorItem(
                itemText: 'Kamyonlar',
                itemIcon: Icons.fire_truck,
                itemOnTap: () {
                  Navigator.pushNamed(context, '/TruckManagement');
                },
              ),
            ]),
      ),
    );
  }
}
