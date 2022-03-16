import 'package:flutter/material.dart';
import 'package:myfirstapp/buttons/choice_button.dart';
import 'package:myfirstapp/buttons/page_change_button.dart';
import 'package:myfirstapp/routing/route_names.dart';
import 'package:myfirstapp/services/navigation_service.dart';

import '../../locator.dart';

class GetStartedActionTabletDesktop extends StatelessWidget {
  final String title;
  final String navigationPath;

  const GetStartedActionTabletDesktop(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //DON'T EVER USE A SERVICE DIRECTLY IN THE UI TO CHANGE ANY KIND OF STATE
        //SERVICES SHOULD ONLY BE USED FROM A VIEWMODEL
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: PageChangeButton('Get Started', DestinationRoute),
    );
  }
}
/*
Container(
padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20,),
child: Text(title,
style: TextStyle(
fontSize: 18,
fontWeight: FontWeight.w800,
color: Colors.white,)),
decoration: BoxDecoration(
color: primaryColor,
borderRadius: BorderRadius.circular(5),
),
),
*/
