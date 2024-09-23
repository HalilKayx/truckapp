import 'package:flutter/material.dart';

import '../constants/mainConstants.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Merhaba Halil,', style: MainConstants.titleStyleGreen),
              Text(' Hoşgeldin', style: MainConstants.titleStyle),
            ],
          ),
        ],
      ),
    );
  }
}
