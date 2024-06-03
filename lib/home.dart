// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, use_super_parameters, avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';
import 'package:speedometer_chart/speedometer_chart.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double value = 30;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 4, 72, 106),
        title: const Text(
          'Automatic Tuner',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 100,
                runSpacing: 50,
                children: [
                  SpeedometerChart.tick(
                    pointerColor: Colors.black,
                    value: value,
                  ),
                ],
              ),
            ),
            const Text(
              "114 Hz",
              style: TextStyle(
                  color: Color.fromARGB(255, 4, 72, 106),
                  fontSize: 60,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buttonChord(
                        onTap: () {},
                        text: "E",
                      ),
                      buttonChord(
                        onTap: () {},
                        text: "A",
                      ),
                      buttonChord(
                        onTap: () {},
                        text: "D",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buttonChord(
                        onTap: () {},
                        text: "G",
                      ),
                      buttonChord(
                        onTap: () {},
                        text: "B",
                      ),
                      buttonChord(
                        onTap: () {},
                        text: "E'",
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      // bottomSheet: ButtonBar(
      //   alignment: MainAxisAlignment.spaceEvenly,
      //   children: <Widget>[

      //   ],
      // )
    );
  }
}

class buttonChord extends StatelessWidget {
  String? text;
  // Function onpress;
  Function()? onTap;
  buttonChord({
    this.onTap,
    this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 4, 72, 106),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text ?? "",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xffffffff),
            ),
          ),
        ),
      ),
    );
  }
}
