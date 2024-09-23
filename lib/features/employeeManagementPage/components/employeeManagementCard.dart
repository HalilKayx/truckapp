import 'package:flutter/material.dart';

import '../../../constants/MainConstants.dart';

class EmployeeManagementCard extends StatelessWidget {
  const EmployeeManagementCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              const Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      minRadius: 45,
                      backgroundImage:
                          NetworkImage('https://d.olay53.com/news/91853.jpg'),
                    ),
                    Text('Halil Kaya',
                        style: TextStyle(
                          fontSize: 16,
                        )),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('34 KGV 78', style: TextStyle(fontSize: 15)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on_outlined,
                            color: MainConstants.mainColor),
                        const SizedBox(width: 2),
                        Text(
                          "Bayer yükünü taşıyor.",
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
            SizedBox(height: 5,),
            Divider()
          ],
        ),
      ),
    );
  }
}
