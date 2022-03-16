import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:myfirstapp/constants/app_colors.dart';
import 'package:myfirstapp/services/navigation_service.dart';
import 'package:myfirstapp/views/destination_view/destination_view2.dart';

import '../locator.dart';


class DepCity {
  final String cityName;
  DepCity({
    required this.cityName,
});
}
class AriCity {
  final String cityName;
  AriCity({
    required this.cityName,
  });
}

class CitySelector extends StatefulWidget {
  List<DepCity> depcities = [
    DepCity(cityName: 'Bremen'),
    DepCity(cityName: 'Berlin')
  ];
  List<AriCity> aricities = [
    AriCity(cityName: 'Bremen'),
    AriCity(cityName: 'Berlin')
  ];
  CitySelector({Key? key}) : super(key: key);

  @override
  State<CitySelector> createState() => _CitySelectorState();
}



class _CitySelectorState extends State<CitySelector> {
  late DepCity selectedDepCity;
  late AriCity selectedAriCity;
  @override
  void initState() {
    super.initState();
    selectedDepCity = widget.depcities[0];
    selectedAriCity = widget.aricities[0];
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DropdownButton<DepCity>(
          value: selectedDepCity,
          items: [
            DropdownMenuItem<DepCity>(
              value: widget.depcities[0],
              child: Text(widget.depcities[0].cityName),
            ),
            DropdownMenuItem<DepCity>(
              value: widget.depcities[1],
              child: Text(widget.depcities[1].cityName),
            ),
          ],
          onChanged: (newCity) {
            setState(() {
              selectedDepCity = newCity!;
            });
          },
        ),
        SizedBox(height:50),
        DropdownButton<AriCity>(
          value: selectedAriCity,
          items: [
            DropdownMenuItem<AriCity>(
              value: widget.aricities[0],
              child: Text(widget.aricities[0].cityName),
            ),
            DropdownMenuItem<AriCity>(
              value: widget.aricities[1],
              child: Text(widget.aricities[1].cityName),
            ),
          ],
          onChanged: (newCity) {
            setState(() {
              selectedAriCity = newCity!;
            });
          },
        ),
        ElevatedButton(
            child: Icon(Icons.search),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => DestinationView2(),
               ),
              );
            }),
      ],
    );
  }
}




/*
class City{
  final  String cityName;
  City({
    required this.cityName,
  });
}

class DestinationsPage extends StatefulWidget {

final City city;
final String date;


const DestinationsPage({Key? key, required this.city, required this.date}) : super(key: key);

@override
_DestinationsPageState createState() => _DestinationsPageState();
}

class _DestinationsPageState extends State<DestinationsPage> {
  Map? responseMap;
  late List cities;

  @override
  void initState(){
    super.initState();
    cities = [];
    fetchDestinations();//widget.city.dep, widget.city.arr, widget.date);
  }

  Future<void> fetchDestinations()async {
    var url = Uri.parse('http://partners.api.skyscanner.net/apiservices/browseroutes/v1.0/FR/eur/en-US/us/anywhere/anytime/anytime?apikey=prtl6749387986743898559646983194'
    );
    http.Response response = await http.get(url);

    responseMap = jsonDecode(response.body);


    setState(() {
      //cities = responseMap![''];
      print(response.body);
    });


  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton<Widget>(

          items: [

            DropdownMenuItem(
              value: widget,
              child:
              ListView.builder(
                itemCount: cities.length,
                  itemBuilder: (context,index){
                    var time = cities[index]['timestamp'];
                    var temperature = cities[index]['temperature'];
                    var condition = cities[index]['condition'];
                    return ListTile(
                      title: Text(time),
                      subtitle: Text('$condition, $temperature'),
                      tileColor: index %2 == 0 ? Colors.grey : Colors.white,
                    );
                  },
              ),
            )

          ]
      )
    );
  }
}





class DestinationTextField extends StatelessWidget {
  final String navigationPath;
  const DestinationTextField(this.navigationPath);

  @override
  Widget build(BuildContext context) {
    final enteredText = TextEditingController();
    late String EnteredText;
    return SizedBox(
      width: 400,
      height: 250,
      child: Column(
        children: [
          TextField(
            controller: enteredText,
            decoration: InputDecoration(
              fillColor: Colors.grey,
              hoverColor: Colors.white70,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white70, width: 2.5),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white54, width: 2.0),
              ),
              labelText: 'Enter destination',
              labelStyle: TextStyle(
                color: Colors.white70,
              ),
            ),
            style: TextStyle(
              fontSize: 20,
              color: Colors.white70,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 50,
            width: 150,
            child: FloatingActionButton(
              onPressed: () {
                EnteredText = enteredText.text;
                print(enteredText.text);
                locator<NavigationService>().navigateTo(navigationPath);
              },
              isExtended: true,
              child: Text(
                'Next page!',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              hoverColor: Colors.white70,
              backgroundColor: primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
*/
