import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Interface',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: CustomInterface(),
    );
  }
}

class CustomInterface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Add your home button onPressed event here
              },
            ),
            SizedBox(width: 10),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'First Portfolio Exam',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white, // Set white color
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.orange,
              alignment: Alignment.center,
              height: 150,
              width: 100,
              child: Text(
                'Orange Box',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey,
                  height: 100,
                  width: 100,
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey,
                  height: 200,
                  width: 100,
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey,
                  height: 100,
                  width: 100,
                ),
              ),
            ],
          ),
          SizedBox(height: 100),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              width: 150,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Image.asset(
                'assets/image.jpg', // Replace 'assets/image.jpg' with your image path
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
