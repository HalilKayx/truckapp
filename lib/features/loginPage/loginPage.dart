import 'package:flutter/material.dart';
import 'package:truckapp/features/loginPage/components/loginCard.dart';
import 'package:truckapp/features/loginPage/components/loginTop.dart';

import '../../constants/mainConstants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height / 1.7,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(145),
                          bottomRight: Radius.circular(70)),
                      color: MainConstants.mainColor),
                  ),
              const Column(
                children: [
                  LoginTop(),
                  LoginCard(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
