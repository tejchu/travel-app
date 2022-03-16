import 'package:flutter/material.dart';
import 'package:myfirstapp/routing/route_names.dart';
import 'package:myfirstapp/widgets/navigation_drawer/drawer_item.dart';
import 'package:myfirstapp/widgets/navigation_drawer/navigation_drawer_footer.dart';
import 'package:myfirstapp/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
        gradient: LinearGradient(
         begin: const FractionalOffset(0.0, -1.0),
         end: const FractionalOffset(0.0, 1.0),
        stops: [0.2, 0.5, 0.7, 0.9],
        colors: [
          Color.fromARGB(255,248,247,245),
          Color.fromARGB(255,193,183,179),
          Color.fromARGB(255,50,84,112,),
          Color.fromARGB(255, 7,7,7),],
      ),
      ),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem('Gallery', Icons.image, GalleryRoute),
          DrawerItem('About', Icons.help_outline, AboutRoute),
          SizedBox(
            height: 500,
          ),
          //DrawerItem('Settings', Icons.settings),
        ],
      ),
    );
  }
}
