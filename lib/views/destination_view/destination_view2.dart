import 'package:flutter/material.dart';
import 'package:myfirstapp/text%20fields/date_picker_text_field1.dart';
import 'package:myfirstapp/text%20fields/date_picker_text_field2.dart';
import 'package:myfirstapp/text%20fields/destination_text_field.dart';
import 'package:myfirstapp/widgets/date_picker/date_picker.dart';

class DestinationView2 extends StatelessWidget {

  //final String date;

  const DestinationView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black54, blurRadius: 20),
            ],
          ),
        ),
        Column(
          children: [
            SizedBox(height:50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 300,
                  width: 400,
                  child: DatePickerTextField(),
                ),
                SizedBox(width: 100,),
                SizedBox(
                  height: 300,
                  width: 400,
                  child: DatePickerTextField2(),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
