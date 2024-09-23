import 'package:flutter/material.dart';

import '../constants/mainConstants.dart';

class EntryDescription extends StatelessWidget {
  const EntryDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 5, left: 20),
      child: Text(
        'Aktif 12 yolculuk bulunmakta.',
        style: MainConstants.titleSolidDescriptionStyle,textAlign:TextAlign.left,
      ),
    );
  }
}