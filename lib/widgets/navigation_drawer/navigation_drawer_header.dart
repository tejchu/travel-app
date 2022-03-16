import 'package:flutter/material.dart';
import 'package:myfirstapp/constants/app_colors.dart';
import 'package:myfirstapp/routing/route_names.dart';
import 'package:myfirstapp/widgets/navigation_drawer/drawer_item.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.white38,
      alignment: Alignment.topCenter,
      child: DrawerItem('Home', Icons.home, HomeRoute),
    );
  }
}
