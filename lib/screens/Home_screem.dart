import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';

class Home_screem extends StatefulWidget {
  @override
  State<Home_screem> createState() => _Home_screemState();
}

class _Home_screemState extends State<Home_screem> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Counter App',
            style: TextStyle(fontSize: 60, fontStyle: FontStyle.italic),
          ),
          //Text('$counter',
          //  style: TextStyle(fontSize: 22, color: Colors.black54))
          AnimatedFlipCounter(
            duration: Duration(milliseconds: 500),
            value: counter,
            textStyle: TextStyle(fontSize: 80), // pass in a value like 2014
          )
        ],
      )),
      floatingActionButton: _buttons(),
    );
  }

  Widget _buttons() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() => counter++);
            }),
        SizedBox(
          height: 10,
        ),
        FloatingActionButton(
            child: Icon(Icons.remove),
            backgroundColor: Colors.red,
            onPressed: () {
              if (counter > 0) {
                setState(() => counter--);
              }
            }),
        SizedBox(
          height: 10,
        ),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero),
            backgroundColor: Colors.green,
            onPressed: () {
              setState(() => counter = 0);
            }),
      ],
    );
  }
}
/*Hola*/