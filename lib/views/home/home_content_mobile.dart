import 'package:flutter/material.dart';
import 'package:myfirstapp/widgets/company_details/company_details.dart';
import 'package:myfirstapp/widgets/get_started_action/get_started_action.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CompanyDetails(),
        SizedBox(
          height:100,
        ),
        GetStartedAction('Get Started!'),
      ],
    );
  }
}
