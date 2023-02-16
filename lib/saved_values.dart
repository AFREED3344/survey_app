import 'package:flutter/material.dart';
import 'package:way_one/data.dart';

class Screensaved extends StatefulWidget {
  const Screensaved({Key? key}) : super(key: key);

  @override
  _ScreensvedState createState() => _ScreensvedState();
}

class _ScreensvedState extends State<Screensaved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        title: const Center(child: Text('THANK YOU....')),
        backgroundColor: Colors.blue[900],
        elevation: 0,
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.blue[900],
            child: Text(
              '$values',
              
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )
        ],
      )),
    );
  }
}
