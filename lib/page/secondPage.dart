import 'dart:ffi';

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              sixthBox(),
              textStyle(),
              firstLayout(),
              SizedBox(
                height: 10,
              ),
              subFirstLayout(),
              textStyle2(),
              secondLayout(),
              SizedBox(
                height: 10,
              ),
              subSecondLayout(),
              SizedBox(
                height: 10,
              ),
              subsecondLayout2(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row textStyle2() {
    return Row(
      children: [
        Container(
          child: Text(
            'Layout Widget 2',
            style: TextStyle(fontSize: 30, color: Colors.red),
          ),
        ),
      ],
    );
  }

  Widget textStyle() {
    return Row(
      children: [
        Container(
          child: Text(
            'Layout Widget 1',
            style: TextStyle(fontSize: 30, color: Colors.red),
          ),
        ),
      ],
    );
  }

  Widget sixthBox() {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(color: Colors.red),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 400,
                height: 170,
                decoration: BoxDecoration(color: Colors.white),
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(90),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(13),
                        child: Container(
                          width: 140,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(90),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          width: 170,
                          height: 40,
                          decoration: BoxDecoration(color: Colors.red),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Container(
                          width: 170,
                          height: 40,
                          decoration: BoxDecoration(color: Colors.red),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Container(
                          width: 170,
                          height: 40,
                          decoration: BoxDecoration(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget firstLayout() {
    return Container(
      padding: EdgeInsets.all(8),
      width: 370,
      height: 80,
      decoration: BoxDecoration(color: Colors.lime[900]),
    );
  }

  Widget subFirstLayout() {
    return Row(
      children: [
        Container(
          width: 80,
          height: 50,
          decoration: BoxDecoration(color: Colors.blue),
        ),
        SizedBox(
          width: 70,
        ),
        Container(
          width: 80,
          height: 50,
          decoration: BoxDecoration(color: Colors.blue),
        ),
        SizedBox(
          width: 60,
        ),
        Container(
          width: 80,
          height: 50,
          decoration: BoxDecoration(color: Colors.blue),
        ),
      ],
    );
  }

  Widget secondLayout() {
    return Row(
      children: [
        Container(
          width: 60,
          height: 70,
          decoration: BoxDecoration(color: Colors.blue),
        ),
        Spacer(),
        Container(
          width: 60,
          height: 70,
          decoration: BoxDecoration(color: Colors.blue),
        ),
      ],
    );
  }

  Widget subSecondLayout() {
    return Row(
      children: [
        SizedBox(
          width: 50,
        ),
        Container(
          width: 60,
          height: 70,
          decoration: BoxDecoration(color: Colors.blue),
        ),
        SizedBox(
          width: 150,
        ),
        Container(
          width: 60,
          height: 70,
          decoration: BoxDecoration(color: Colors.blue),
        ),
      ],
    );
  }

  Widget subsecondLayout2() {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: 370,
              height: 40,
              decoration: BoxDecoration(color: Colors.lime[900]),
            ),
            Container(
              width: 370,
              height: 40,
              decoration: BoxDecoration(color: Colors.blue),
            ),
          ],
        ),
        Center(
          child: Container(
            margin: EdgeInsets.all(20),
            width: 280,
            height: 40,
            decoration: BoxDecoration(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
