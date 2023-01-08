import 'package:flutter/material.dart';
import 'package:my_country_explorer/view_models/home_page_view_model.dart';
import 'package:my_country_explorer/views/home_page/home_page_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AllCountriesProvider()),
    ],
      child: const MyApp()
  ));
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
