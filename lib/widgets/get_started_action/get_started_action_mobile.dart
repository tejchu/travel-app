import 'package:flutter/material.dart';
import 'package:myfirstapp/constants/app_colors.dart';
import 'package:myfirstapp/services/navigation_service.dart';

import '../../locator.dart';

class GetStartedActionMobile extends StatelessWidget {
  final String title;
  final String navigationPath;
  const GetStartedActionMobile(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
      //DON'T EVER USE A SERVICE DIRECTLY IN THE UI TO CHANGE ANY KIND OF STATE
      //SERVICES SHOULD ONLY BE USED FROM A VIEWMODEL
      locator<NavigationService>().navigateTo(navigationPath);
    },
    child: Container(
      height: 60,
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: Colors.white,)
      ),
      decoration: BoxDecoration(
        color: Colors.white38,
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    );
  }
}
