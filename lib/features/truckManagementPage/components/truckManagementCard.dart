import 'package:flutter/material.dart';

import '../../../constants/MainConstants.dart';

class TruckManagementCard extends StatelessWidget {
  const TruckManagementCard({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 110,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.6)),
                  child: Row(children: [
                    Container(
                        width: 30,
                        color: Colors.blueAccent,
                        height: 40,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'TR',
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.30,
                      child: const Text('34 KGV 78',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing:2
                        ), textAlign: TextAlign.center,),
                    ),
                  ]),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Araç Bakımına', style: TextStyle(fontSize: 16)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.date_range,
                            color: MainConstants.mainColor),
                        const SizedBox(width: 2),
                        Text(
                          "5 Gün Kaldı.",
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
            SizedBox(height: 15),
            Divider(),
          ],
        ),
      ),
    );
  }
}
