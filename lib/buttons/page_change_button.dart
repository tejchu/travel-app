
import 'package:flutter/material.dart';
import 'package:myfirstapp/constants/app_colors.dart';
import 'package:myfirstapp/services/navigation_service.dart';

import '../locator.dart';


class PageChangeButton extends StatelessWidget {
  final String title;
  final String navigationPath;
  const PageChangeButton(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 300,
      child: ElevatedButton(
        onPressed: () {
          locator<NavigationService>().navigateTo(navigationPath);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
        ),
        child: Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            )),
      ),

    );
  }
}

