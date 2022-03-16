import 'package:flutter/material.dart';
import 'package:myfirstapp/routing/route_names.dart';
import 'package:myfirstapp/text%20fields/destination_text_field.dart';
import 'package:myfirstapp/views/destination_view/travel_purpose_choice.dart';

//City(city: 'Berlin');

class DestinationView extends StatelessWidget {
  const DestinationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black54, blurRadius: 20),
        ],
      ),
      child: Center(
          child: Column(
        children: <Widget>[
          SizedBox(height: 100,),
          Text('PURPOSE OF  TRAVEL',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.w800,
                fontSize: 25,
              )),
          SizedBox(height: 50,),
          TravelPurposeChoice(),
          SizedBox(height: 70,),
          Text('YOUR DESIRED DESTINATION',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.w800,
                fontSize: 25,
              )),
          SizedBox(height: 70,),
          CitySelector(),
        ],
      )),
    );
  }
}
