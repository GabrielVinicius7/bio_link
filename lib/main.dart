import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage('lib/assets/frontal.jpg'),
        ),
        ElevatedButton(
          onPressed: () => launch('https://www.link1.com'),
          child: Text('Instagram'),
        ),
        ElevatedButton(
          onPressed: () => launch('https://www.link2.com'),
          child: Text('Link 2'),
        ),
        ElevatedButton(
          onPressed: () => launch('https://www.link3.com'),
          child: Text('Link 3'),
        ),
        ElevatedButton(
          onPressed: () => launch('https://www.link4.com'),
          child: Text('Link 4'),
        ),
      ],
    );
  }
}

