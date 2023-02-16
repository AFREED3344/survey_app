import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:way_one/home_page.dart';
import 'package:way_one/provaidare/provaidar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((context) => Provaider())),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false, title: 'Way', home: Screenhome()),
    );
  }
}
