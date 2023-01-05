import 'package:flutter/material.dart';
import 'package:my_country_explorer/views/home_page/home_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Country Explorer',
      home: HomePage(),
    );
  }
}
