import 'package:flutter/material.dart';
import 'package:myfirstapp/buttons/choice_button.dart';

class TravelPurposeChoice extends StatelessWidget {
  const TravelPurposeChoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PurposeChoice(),
        /*
        ChoiceButton('Leisure'),
        SizedBox(width: 50,),
        ChoiceButton('Business'),
        SizedBox(width: 50,),
        ChoiceButton('Weekend Getaway'),
        SizedBox(width: 50,),
        ChoiceButton('Family Vacation'),
        */

      ],
    );
  }
}
