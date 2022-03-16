import 'package:flutter/material.dart';
import 'package:myfirstapp/services/navigation_service.dart';

import '../../locator.dart';

class NavBarLogo extends StatelessWidget {
  final String navigationPath;
  const NavBarLogo(this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        //DON'T EVER USE A SERVICE DIRECTLY IN THE UI TO CHANGE ANY KIND OF STATE
        //SERVICES SHOULD ONLY BE USED FROM A VIEWMODEL
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: SizedBox(
        height: 80,
        width: 150,
        child: Image.asset('images/logo1.png'),
      ),
    );



  }
}
