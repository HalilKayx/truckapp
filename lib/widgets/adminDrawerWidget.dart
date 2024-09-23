import 'package:flutter/material.dart';
import 'listTileWidget.dart';

class AdminDrawer extends StatelessWidget {
  const AdminDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://d.olay53.com/news/91853.jpg'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Halil Kaya',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'info@yukumnerde.com.tr',
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
          Column(
            children: [
              (true)
                  ? ListTileWidget(
                      icon: Icons.account_box,
                      text: 'Çalışan Yönetimi',
                      OnPressed: () {
                        Navigator.pushNamed(context, '/EmployeeManagement');
                      },
                    )
                  : SizedBox.shrink(),
              ListTileWidget(
                icon: Icons.work,
                text: 'İş Yönetimi',
                OnPressed: () {
                  Navigator.pushNamed(context, '/WorkManagement');
                },
              ),
              ListTileWidget(
                icon: Icons.handshake_outlined,
                text: 'Müşteri Yönetimi',
                OnPressed: () {
                  Navigator.pushNamed(context, '/CustomerManagement');
                },
              ),
              ListTileWidget(
                icon: Icons.fire_truck,
                text: 'Kamyon Yönetimi',
                OnPressed: () {
                  Navigator.pushNamed(context, '/TruckManagement');
                },
              ),
              const Divider(),
              ListTileWidget(
                icon: Icons.more_time,
                text: 'Aktif İşlerini Görüntüle',
                OnPressed: () {},
              ),
              const Divider(),
              ListTileWidget(
                icon: Icons.logout_outlined,
                text: 'Çıkış Yap',
                OnPressed: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
