import 'package:flutter/material.dart';
import 'package:myfirstapp/constants/app_colors.dart';

late String PickedTravelPurpose;


class Purpose{
  final String purposeName;

  Purpose({
    required this.purposeName,

  });
}
class PurposeChoice extends StatefulWidget {

  List<Purpose> purposes = [
    Purpose(purposeName: 'Choose the purpose of your travel'),
    Purpose(purposeName: 'Holiday', ),
    Purpose(purposeName: 'Family', ),
    Purpose(purposeName: 'Chill')
  ];
  PurposeChoice({Key? key}) : super(key: key);

  @override
  _PurposeChoiceState createState() => _PurposeChoiceState();
}

class _PurposeChoiceState extends State<PurposeChoice> {
  late Purpose selectedPurpose;
  @override
  void initState() {
    super.initState();
    selectedPurpose = widget.purposes[0];
  }
  @override
  Widget build(BuildContext context) {
    return Container(

      child: DropdownButton<Purpose>(
          value: selectedPurpose,
          items: [
            DropdownMenuItem<Purpose>(
              value: widget.purposes[0],
              child: Text(widget.purposes[0].purposeName),

            ),
            DropdownMenuItem<Purpose>(
              value: widget.purposes[1],
                child: Text(widget.purposes[1].purposeName),

            ),
            DropdownMenuItem<Purpose>(
              value: widget.purposes[2],
              child: Text(widget.purposes[2].purposeName),

            ),
            DropdownMenuItem<Purpose>(
              value: widget.purposes[3],
              child: Text(widget.purposes[3].purposeName),

            ),
          ],
      onChanged: (newPurpose) {
        setState(() {
          selectedPurpose = newPurpose!;
        });
      }
      ),
    );
  }
}



/*
class ChoiceButton extends StatelessWidget {
  final String title;

  const ChoiceButton(this.title);

  @override
  Widget build(BuildContext context) {
    int counter = 0;
    return SizedBox(
      height: 60,
      width: 300,
      child: ElevatedButton(
        onPressed: () {
          PickedTravelPurpose = title;
          print(PickedTravelPurpose);
        },

          style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              counter >0 ? primaryColor : Colors.white70),
        ),
        child: Text(title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.white70,
            )),
      ),
    );
  }
}
*/