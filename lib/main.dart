import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> restaurants = [
    'Московский Кремль и Красная площадь',
    'Царь-пушка и Царь-колокол',
    'Оружейная палата',
    'Мавзолей Ленина',
    'Большой театр',
    'Воробьевы горы',
    'ВДНХ'
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Достопримечательности Москвы'),
          if (currentIndex != null)
            Text(
              restaurants[currentIndex],
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          Padding(
            padding: EdgeInsets.only(top: 50),
          ),
          FlatButton(
            onPressed: () {
              updateIndex();
            },
            child: Text('Случайный выбор'),
            color: Colors.blue,
            textColor: Colors.white,
          )
        ],
      ))),
    );
  }

  void updateIndex() {
    final random = Random();
    final index = random.nextInt(restaurants.length);
    setState(() {
      currentIndex = index;
    });
  }
}
