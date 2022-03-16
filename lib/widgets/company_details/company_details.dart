import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CompanyDetails extends StatelessWidget {
  const CompanyDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.left
                : TextAlign.center;
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 40
                : 50;
        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 16
                : 21;
        double edgeInsets =
        sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? 40
              : 0;
        return Container(
          width: 900,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: edgeInsets),
                child: Text(
                'TRAVEL MADE EASIER!\nCREATE YOUR PERFECT HOLIDAY IN JUST SECONDS.',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  height: 1.2,
                  fontSize: titleSize,
                ),
                textAlign: textAlignment,
              ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.only(left: edgeInsets),
                child: Text(
                  'Leave the time-consuming and stressful job of searching for the perfect vacation to us! '
                  'Enjoy the luxury of matching up withpadding: EdgeInsets.only(left: 40), your dream destination with only a few clicks! '
                  'Get started today!',
                  style: TextStyle(fontSize: descriptionSize, height: 1.7),
                  textAlign: textAlignment,
              ),
              ),
            ],
          ),
        );
      },
    );
  }
}
