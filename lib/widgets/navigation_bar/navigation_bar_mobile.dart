import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myfirstapp/routing/route_names.dart';
import 'package:myfirstapp/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              onPressed:  (){},
              icon: Icon(Icons.menu),
          ),
          NavBarLogo(HomeRoute),
          ]
      ),
    );
  }
}
