import 'package:flutter/material.dart';
import '../../../widgets/entryDescription.dart';
import '../../../widgets/welcomeWidget.dart';
class AdminHomePageTop extends StatelessWidget {
  const AdminHomePageTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: const Icon(Icons.menu),
            ),
          ],
        ),
        WelcomeWidget(),
        EntryDescription(),
      ],
    );
  }
}



