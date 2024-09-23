import 'package:flutter/material.dart';
import '../../../constants/MainConstants.dart';
class CustomerManagementCard extends StatelessWidget {
  const CustomerManagementCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 110,
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              const Expanded(
                flex: 4,
                child: Center(
                    child: Text('Halil Kaya',
                        style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.bold,
                        ))),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Fındık Yükü', style: TextStyle(fontSize: 15)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.access_time,
                            color: MainConstants.mainColor),
                        const SizedBox(width: 2),
                        Text(
                          "Teslimat 3 Saat",
                          style: TextStyle(
                              color: MainConstants.mainColor,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Expanded(
                flex: 1,
                child: Center(child: Icon(Icons.more_vert)),
              ),
            ]),
            SizedBox(height: 15,),
            Divider(),
          ],
        ),
      ),
    );
  }
}
