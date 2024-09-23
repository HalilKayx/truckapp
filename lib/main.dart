import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:truckapp/config/routing/onGeneratorRoute.dart';

import 'features/loginPage/loginPage.dart';

void main() {
  runApp(const truckApp());
}

class truckApp extends StatelessWidget {
  const truckApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: const [Locale('tr')],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(fontFamily: 'Genel'),
      debugShowCheckedModeBanner: false,
      title: 'Kamyon Uygulaması',
      home: const LoginPage(),
      onGenerateRoute: RouteGenerate.routeOlustur,
    );
  }
}
