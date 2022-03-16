import 'package:flutter/material.dart';
import 'package:myfirstapp/widgets/company_details/company_details.dart';
import 'package:myfirstapp/widgets/get_started_action/get_started_action.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CompanyDetails(),
        Expanded(
          child: Center(
            child: GetStartedAction('Get Started!'),
          ),
        ),
      ],
    );
  }
}
