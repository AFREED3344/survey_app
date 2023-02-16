import 'package:flutter/material.dart';
import 'package:way_one/home_page.dart';

class Screenlogin extends StatefulWidget {
  const Screenlogin({Key? key}) : super(key: key);

  @override
  _ScreenloginState createState() => _ScreenloginState();
}

class _ScreenloginState extends State<Screenlogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset('asset/284ac44123804b9f8726230648700a0f.png')
              ],
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter Name ',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan[700],
                ),
                onPressed: (() {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (ctx) => Screenhome()));
                }),
                icon: const Icon(Icons.school_outlined),
                label: const Text('Login'))
          ],
        ),
      ),
    );
  }
}
