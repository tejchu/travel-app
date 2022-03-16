import 'package:flutter/material.dart';
import 'package:myfirstapp/constants/app_colors.dart';

String FirstPickedDate = '??';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key, this.restorationId}) : super(key: key);

  final String? restorationId;


  @override
  State<DatePicker> createState() => DatePickerState();
}

class DatePickerState extends State<DatePicker> with RestorationMixin {
  @override
  String? get restorationId => widget.restorationId;

  final RestorableDateTime _selectedDate =
      RestorableDateTime(DateTime(2022, 1, 1));
  late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture =
      RestorableRouteFuture<DateTime?>(
    onComplete: _selectDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        datePickerRoute,
        arguments: _selectedDate.value.millisecondsSinceEpoch,
      );
    },
  );

  static Route<DateTime> datePickerRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return DialogRoute<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return DatePickerDialog(
          restorationId: 'date_picker_dialog',
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),
          firstDate: DateTime(2022),
          lastDate: DateTime(2035),
        );
      },
    );
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedDate, 'selected_date');
    registerForRestoration(
        _restorableDatePickerRouteFuture, 'date_picker_route_future');
  }

  void _selectDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _selectedDate.value = newSelectedDate;
        FirstPickedDate = _selectedDate.value.day.toString()+'/'
            +_selectedDate.value.month.toString()+'/' +
            _selectedDate.value.year.toString();
        print(FirstPickedDate);
        //ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          //content: Text(
            //  'Selected: ${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}'),
        //));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            _restorableDatePickerRouteFuture.present();
            //print(FirstPickedDate);

            /*
            print(_selectedDate.value.day);
            print(_selectedDate.value.month);
            print(_selectedDate.value.year);*/
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color?>(primaryColor),
          ),
          child: const Text(
            'Pick a Date',
            style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.w800,
              fontSize: 21,
            ),
          ),
        ),
      ),
    );
  }
}
