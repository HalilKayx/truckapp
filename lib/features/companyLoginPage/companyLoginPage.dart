import 'package:flutter/material.dart';
import 'package:truckapp/constants/mainConstants.dart';
import 'package:truckapp/widgets/textFormFieldWidget.dart';

import '../../widgets/appBarWidget.dart';
import '../../widgets/elevatedButtonWidget.dart';

class CompanyLoginPage extends StatefulWidget {
  const CompanyLoginPage({Key? key}) : super(key: key);

  @override
  State<CompanyLoginPage> createState() => _CompanyLoginPageState();
}

class _CompanyLoginPageState extends State<CompanyLoginPage> {
  String firmaKod = '', sifre = '';
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(appBarText: 'Yüküm Nerde? Firma Girişi'),
      resizeToAvoidBottomInset: false,
      body: Form(
        key: formKey,
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding:const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Firma Girişi',
                  style: MainConstants.titleStyle,
                ),
                const SizedBox(height: 10),
                const Text(
                    'Firma kodunuz, firma yöneticiniz tarafından iletilecektir.',
                    style: MainConstants.titleSolidDescriptionStyle,
                    textAlign: TextAlign.center),
                const SizedBox(height: 30),
                TextFormFieldWidget(
                    OnSaved: (deger) {
                      firmaKod = deger!;
                    },
                    Validator: (p0) {},
                    LabelText: 'Firma Kodunu Giriniz',
                    PrefixIcon: Icons.numbers,
                    PTextInputType: TextInputType.number),
                const SizedBox(height: 15),
                TextFormFieldWidget(
                  OnSaved: (deger) {
                    sifre = deger!;
                  },
                  Validator: (p0) {},
                  LabelText: 'Şifrenizi Giriniz',
                  PrefixIcon: Icons.lock,
                  PTextInputType: TextInputType.visiblePassword,
                  ObscureText: true,
                ),
                const SizedBox(height: 5),
                CheckboxMenuButton(
                    value: false,
                    onChanged: (value) {},
                    child: const Text('Giriş bilgilerini kayıt et.')),
                const SizedBox(height: 5),
                ElevatedButtonWidget(
                    OnPressed: () {
                      Navigator.pushNamed(context, '/AdminHomePage');
                      bool validate = formKey.currentState!.validate();
                      if (validate) {
                        formKey.currentState!.save();
                        String result = 'Firma Kodu:$firmaKod\nŞifre:$sifre';
                        formKey.currentState!.reset();
                      }
                    },
                    butonText: 'GİRİŞ YAP'),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Şifreni mi unuttun ?',
                      style: TextStyle(color: MainConstants.mainColor),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
