import 'package:flutter/material.dart';
import 'package:myfirstapp/routing/route_names.dart';
import 'package:myfirstapp/widgets/get_started_action/get_started_action_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'get_started_action_mobile.dart';

class GetStartedAction extends StatelessWidget {
  final String title;
  GetStartedAction(this.title);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: GetStartedActionMobile(title, DestinationRoute),
      tablet: GetStartedActionTabletDesktop(title, DestinationRoute),
    );
  }
}
