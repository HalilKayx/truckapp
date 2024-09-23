import 'package:flutter/material.dart';
import 'package:truckapp/widgets/welcomeWidget.dart';
import '../../widgets/appBarWidget.dart';

class CustomerPanelPage extends StatelessWidget {
  const CustomerPanelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(appBarText: 'Yükünüzün Detayı'),
      body: Column(
        children: [
          WelcomeWidget(),
          Padding(
              padding: EdgeInsets.only(top: 20),
              child: Container(
                child: const Center(
                    child: Text(
                  'MAP',
                  style: TextStyle(color: Colors.white, fontSize: 150),
                )),
                height: 300,
                color: Colors.green.shade400,
                width: 350,
              )),
          Container(
            child: const Column(
              children: [
              ],
            ),
          ),
        ],
      ),
    );
  }
}
