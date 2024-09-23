import 'package:flutter/material.dart';
import 'package:popover/popover.dart';
import 'package:truckapp/extensions/context_extension.dart';

import '../constants/mainConstants.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  AppBarWidget(
      {super.key,
      required this.appBarText,
      this.showActions,
      this.popEverItem,
      this.appBarAddIconOnPressed});

  final bool? showActions;
  final String appBarText;
  final Widget? popEverItem;
  void Function()? appBarAddIconOnPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: showActions != null && showActions != false
          ? [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: GestureDetector(
                      child: const Icon(
                        Icons.tune,
                        size: 28,
                      ),
                      onTap: () {
                        showPopover(
                          context: context,
                          bodyBuilder: (context) => popEverItem!,
                          direction: PopoverDirection.bottom,
                          height: context.height*0.2,
                          width: 160,
                          backgroundColor: Colors.white,
                          arrowHeight: 15,
                          arrowWidth: 25,
                          arrowDxOffset: 118,
                          arrowDyOffset: -15,
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: IconButton(
                      onPressed: appBarAddIconOnPressed,
                      icon: const Icon(Icons.add, size: 28),
                    ),
                  ),
                ],
              ),
            ]
          : [],
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      iconTheme: const IconThemeData(color: Colors.white),
      title: Text(
        appBarText,
        style: const TextStyle(color: Colors.white,fontSize: 19),
      ),
      backgroundColor: MainConstants.mainColor,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(57);
}
