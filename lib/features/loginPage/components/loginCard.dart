import 'package:flutter/material.dart';
import 'package:truckapp/constants/mainConstants.dart';
import 'package:truckapp/widgets/textFormFieldWidget.dart';

import '../../../widgets/iconButtonWidget.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Colors.white),
        width: (MediaQuery.of(context).size.width) / 1.1,
        child: Column(
          children: [
            const SizedBox(
              height: 65,
            ),
            Text(
              'Yük Kodu Girin',
              style: MainConstants.titleStyle,
            ),
            const SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 19,
                ),
                Container(
                    width: (MediaQuery.of(context).size.width) / 1.4,
                    child: TextFormFieldWidget(
                      OnSaved: (p0) {},
                      Validator: (p0) {},
                      PrefixIcon: Icons.numbers,
                      LabelText: '6 Haneli Yük Kodunuz...',
                      PTextInputType: TextInputType.number,
                    )),
                IconButtonWidget(
                  icon: Icons.arrow_forward_ios,
                  IconSize: 35,
                  OnPressed: () {
                    Navigator.pushNamed(context, '/CustomerPanelPage');
                  },
                ),
              ],
            ),
            MainConstants.sizeBox15px,
            const Text(
              'Yükünüzü takip etmek için kodu girin.',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Yükünüzün konumunu ve durumunu kontrol edin.',
              style: MainConstants.titleSolidDescriptionStyle,
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/CompanyLoginPage');
                  },
                  icon: const Icon(Icons.add, color: Colors.black),
                  label: const Text(
                    'Firma Giriş',
                    style: MainConstants.fontWeightBoldColorBlack,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
