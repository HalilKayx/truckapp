import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:truckapp/features/adminHomePage/adminHomePage.dart';
import 'package:truckapp/features/companyLoginPage/companyLoginPage.dart';
import 'package:truckapp/features/customerManagementPage/components/customerAdd.dart';
import 'package:truckapp/features/customerManagementPage/customerManagementPage.dart';
import 'package:truckapp/features/customerPanelPage/customerPanelPage.dart';
import 'package:truckapp/features/employeeManagementPage/components/employeeAdd.dart';
import 'package:truckapp/features/loginPage/loginPage.dart';
import 'package:truckapp/features/truckManagementPage/components/truckAdd.dart';
import 'package:truckapp/features/truckManagementPage/truckManagementPage.dart';
import 'package:truckapp/features/workManagementPage/components/workAdd.dart';
import 'package:truckapp/features/workManagementPage/workManagementPage.dart';

import '../../features/employeeManagementPage/employeeManagementPage.dart';

class RouteGenerate {
  static Route<dynamic>? _setRoute(Widget goToPage) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return MaterialPageRoute(
        builder: (context) => goToPage,
      );
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
        builder: (context) => goToPage,
      );
    } else {
      return MaterialPageRoute(
        builder: (context) => goToPage,
      );
    }
  }

  static Route<dynamic>? routeOlustur(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _setRoute(const LoginPage());
      case '/CompanyLoginPage':
        return _setRoute(const CompanyLoginPage());
      case '/CustomerPanelPage':
        return _setRoute(const CustomerPanelPage());
      case '/AdminHomePage':
        return _setRoute(const AdminHomePage());
      case '/EmployeeManagement':
        return _setRoute(const EmployeeManagementPage());
      case '/WorkManagement':
        return _setRoute(const WorkManagementPage());
      case '/CustomerManagement':
        return _setRoute(const CustomerManagementPage());
      case '/TruckManagement':
        return _setRoute(const TruckManagementPage());
      case '/EmployeeAdd':
        return _setRoute(const EmployeeAdd());
      case '/WorkAdd':
        return _setRoute(const WorkAdd());
      case '/CustomerAdd':
        return _setRoute(const CustomerAdd());
      case '/TruckAdd':
        return _setRoute(const TruckAdd());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.amber,
              title: const Text(
                '404',
                style: TextStyle(color: Colors.white),
              ),
            ),
            body: const Center(
              child: Text(
                'Böyle Bir Sayfa Yok! ',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        );
    }
  }
}
