import 'package:flutter/material.dart';
import 'package:flutter_application/homePage.dart';
import 'package:flutter_application/page/firstPage.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Interview'),
        ),
        body: HomePage(),
      ),
    );
  }
}
