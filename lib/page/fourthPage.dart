import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  _FourthPageState createState() => _FourthPageState();
}

final PageController controller = PageController(initialPage: 0);

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            listViewslider(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 5,
              color: Colors.black,
            ),
            SizedBox(
              height: 10,
            ),
            grid(controller),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 5,
              color: Colors.black,
            ),
            SizedBox(
              height: 10,
            ),
            pageViewSlider(context),
          ],
        ),
      ),
    );
  }

  Widget pageViewSlider(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: PageView(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(color: Colors.amber),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(color: Colors.green),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(color: Colors.red),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget listViewslider() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                height: 250,
                width: 350,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget grid(PageController controller) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      child: PageView(
        controller: controller,
        children: <Widget>[
          Center(
            child: GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              children: List.generate(8, (index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue,
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
}
