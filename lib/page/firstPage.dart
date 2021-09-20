import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

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
              firstBox(),
              SizedBox(
                height: 10,
              ),
              secondBox(context),
              SizedBox(
                height: 10,
              ),
              thirdBox(context),
              SizedBox(
                height: 10,
              ),
              fourthBox(context),
              SizedBox(
                height: 10,
              ),
              fifthBox(),
              SizedBox(
                height: 10,
              ),
              cardSlider(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
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

  Widget cardSlider() {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget fifthBox() {
    return Row(
      children: [
        Text('Text 4'),
        Spacer(),
        Text('Text 4'),
        SizedBox(
          width: 8,
        ),
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(color: Colors.blue),
        ),
      ],
    );
  }

  Widget firstBox() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(color: Colors.lightBlue[900]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(color: Colors.blue),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Text 1',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              Spacer(),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(color: Colors.blue),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Text 2',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Text 3',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text(
            'Text 3',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text(
            'Text 3',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget secondBox(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.lightBlue[900]),
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                'Text 3',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Text 3',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
          Spacer(),
          Row(
            children: [
              Text(
                'Text 4',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(color: Colors.blue),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget thirdBox(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Text 4',
            style: TextStyle(color: Colors.white),
          ),
          Center(
              child: Text(
            'Text 4',
            style: TextStyle(fontSize: 25, color: Colors.white),
          )),
          Center(
              child: Text(
            'Text 4',
            style: TextStyle(fontSize: 25, color: Colors.white),
          )),
        ],
      ),
      decoration: BoxDecoration(color: Colors.lightBlue[900]),
      width: MediaQuery.of(context).size.width,
    );
  }

  Widget fourthBox(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Text 4',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Text(
            'Text 4',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          Text(
            'Text 4',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ],
      ),
      decoration: BoxDecoration(color: Colors.lightBlue[900]),
      width: MediaQuery.of(context).size.width,
    );
  }
}
