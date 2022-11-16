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
            style: TextStyle(
                fontSize: 24,
                color: Colors.black54,
                fontStyle: FontStyle.italic),
          ),
          Text('$counter',
              style: TextStyle(fontSize: 22, color: Colors.black54))
        ],
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() => counter++);
          }),
    );
  }
}
