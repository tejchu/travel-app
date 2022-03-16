import 'package:flutter/material.dart';
TextEditingController dateCtl2 = TextEditingController();

class DatePickerTextField2 extends StatelessWidget {

  const DatePickerTextField2();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: dateCtl2,
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
        labelText: 'Enter date',
        labelStyle: TextStyle(
          color: Colors.white70,
        ),
      ),
      style: TextStyle(
        fontSize: 20,
        color: Colors.white70,
      ),
      onTap: () async{
        DateTime date = DateTime.now();
        FocusScope.of(context).requestFocus(new FocusNode());

        date = (await showDatePicker(
            context: context,
            initialDate:DateTime.now(),
            firstDate:DateTime(1900),
            lastDate: DateTime(2100)))!;
        
        dateCtl2.text = date.toIso8601String();
        dateCtl2.text.substring(0,dateCtl2.text.indexOf('T'))
        //String()
    ;},);
  }
}




/*
class DatePickerTextField extends StatelessWidget {
final String DatePicked;
  DatePickerTextField(this.DatePicked);

  @override
  Widget build(BuildContext context) {
    final enteredText = TextEditingController();
    return TextField(
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
    );
  }
}
*/