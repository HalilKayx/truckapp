import 'package:flutter/material.dart';

import '../../../widgets/elevatedButtonWidget.dart';

class AdminHomeTable extends StatelessWidget {
  const AdminHomeTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.height * 2,
          child: DataTable(
              dataRowMaxHeight: MediaQuery.of(context).size.width * 0.2,
              headingTextStyle: const TextStyle(fontWeight: FontWeight.bold),
              columns: const <DataColumn>[
                DataColumn(label: Text('Şöför Adı')),
                DataColumn(label: Text('Yük Adı')),
                DataColumn(label: Text(' Teslimat')),
              ],
              rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  DataCell(Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.08,
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://d.olay53.com/news/91853.jpg'),
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                      const Text('Halil')
                    ],
                  )),
                  const DataCell(Text('Patates')),
                  const DataCell(Text('3 Saat ')),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.08,
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://d.olay53.com/news/91853.jpg'),
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                      const Text('Halil')
                    ],
                  )),
                  const DataCell(Text('Patates')),
                  const DataCell(Text('3 Saat ')),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.08,
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://d.olay53.com/news/91853.jpg'),
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                      const Text('Hasan')
                    ],
                  )),
                  const DataCell(Text('Limon')),
                  const DataCell(Text('4 Saat ')),
                ]),
              ]),
        ),
        const SizedBox(height: 10),
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          child: ElevatedButtonWidget(
              OnPressed: () {}, butonText: 'Tümünü İncele'),
        )
      ],
    );
  }
}