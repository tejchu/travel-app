
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:myfirstapp/locator.dart';
import 'package:myfirstapp/views/layout_template/layout_template.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Travel.io',
        debugShowCheckedModeBanner: false,
        home: LayoutTemplate(),
    );
  }
}

