import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'fourthPage.dart';

class ThirthPage extends StatefulWidget {
  const ThirthPage({Key? key}) : super(key: key);

  @override
  _ThirthPageState createState() => _ThirthPageState();
}

class _ThirthPageState extends State<ThirthPage> {
  List itemList = [
    'Page 1',
    'Page 2',
    'Page 3',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            corouselSlider(),
            SizedBox(
              height: 100,
            ),
            gridView(controller),
          ],
        ),
      ),
    );
  }

  Widget gridView(PageController controller) {
    return Container(
      width: 300,
      height: 300,
      child: PageView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        children: <Widget>[
          Center(
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 3,
              mainAxisSpacing: 3,
              children: List.generate(6, (index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  child: Center(
                      child: Text(
                    '${index + 1}',
                    style: TextStyle(fontSize: 15, color: Colors.red),
                  )),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(90),
                  ),
                );
              }),
            ),
          ),
          Center(
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 3,
              mainAxisSpacing: 3,
              children: List.generate(6, (index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  child: Center(
                      child: Text(
                    '${index + 7}',
                    style: TextStyle(fontSize: 15, color: Colors.red),
                  )),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(90),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget corouselSlider() {
    return Container(
      padding: EdgeInsets.all(8),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 180.0,
          enlargeCenterPage: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
        items: itemList.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                child: Center(child: Text('$i')),
                decoration: BoxDecoration(color: Colors.lightBlueAccent),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
