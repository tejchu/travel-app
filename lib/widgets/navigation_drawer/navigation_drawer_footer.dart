import 'package:flutter/material.dart';
import 'package:myfirstapp/widgets/navigation_drawer/drawer_item.dart';

class NavigationDrawerFooter extends StatelessWidget {
  const NavigationDrawerFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.black54,
      alignment: Alignment.bottomCenter,
     // child: DrawerItem('Settings',Icons.settings),
    );
  }
}
