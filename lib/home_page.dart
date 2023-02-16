import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:way_one/data.dart';
import 'package:way_one/provaidare/provaidar.dart';
import 'package:way_one/saved_values.dart';

class Screenhome extends StatelessWidget {
  Screenhome({Key? key}) : super(key: key);

  int pageindex = 1;

  int buttonindex = -1;

  List<String> abcd = ['A .', 'B .', 'C .', 'D .'];

  List<String> lotiimg = [
    'asset/124194-exam-icon-lottie-json-animation.json',
    'asset/61281-class-board.json',
    'asset/113513-educatin.json',
    'asset/129732-walk-cycle-la-communaute.json',
    'asset/126526-education.json',
    'asset/73814-working-people.json'
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<Provaider>(builder: (context, value, child) {
      return Scaffold(
          backgroundColor: Colors.blue[900],
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            leading: const Icon(
              Icons.cancel_outlined,
              color: Colors.white,
              size: 25,
            ),
            title: Center(
              child: Chip(
                  backgroundColor: Colors.blue[900],
                  shadowColor: Colors.white,
                  label: Text(
                    '$pageindex/5',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 224, 221, 221),
                        fontSize: 25),
                  )),
            ),
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                ),
                onPressed: (() {
                  pageindex < 5
                      ? pageindex++
                      : Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Screensaved()),
                        );
                  value.storvalue();
                  // setState(() {
                  //   pageindex < 5
                  //       ? pageindex++
                  //       : Navigator.of(context).push(MaterialPageRoute(
                  //           builder: (ctx) => const Screensaved()));
                  // });
                }),
                child: const Text('skip'),
              ),
              const SizedBox(
                width: 10,
              )
            ],
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 180,
                  color: Colors.blue[900],
                  child: Lottie.asset(lotiimg[pageindex]),
                ),
                //
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.white)),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              datas['questions'][pageindex]['question'],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 275,
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          //
                          onTap: (() {
                            print(values);
                            buttonindex = index;
                            value.tuch(index);
                            // setState(() {
                            //   buttonindex = index;
                            //   // pageindex < 10 ? pageindex++ : null;
                            // });
                          }),
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            height: 60,
                            width: 100,
                            decoration: BoxDecoration(
                                color: index == buttonindex
                                    ? Colors.green[100]
                                    : Colors.white,
                                border:
                                    Border.all(color: Colors.green, width: 1),
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  abcd[index],
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  datas['questions'][pageindex]['answers']
                                      [index],
                                  style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.orange[200],
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Colors.orange[400],
                      ),
                      //
                      onPressed: (() {
                        values.add(datas['questions'][pageindex]['answers']
                            [buttonindex]);
                        value.storvalue();
                        pageindex < 5
                            ? pageindex++
                            : Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Screensaved()),
                              );
                        buttonindex = -1;
                        // setState(() {
                        //   values.add(datas['questions'][pageindex]['answers']
                        //       [buttonindex]);

                        //   pageindex < 5
                        //       ? pageindex++
                        //       : Navigator.of(context).push(MaterialPageRoute(
                        //           builder: (ctx) => const Screensaved()));
                        //   buttonindex = -1;
                        // });
                      }),
                      child: const Text(
                        'Next',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                )
              ],
            ),
          ));
    });
  }
}
