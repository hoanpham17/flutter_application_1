import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SimpleInterface',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: SimpleInterface(),
    );
  }
}

class SimpleInterface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF173C69),
        title: Text(
          'First Portfolio Exam',
          style: TextStyle(
            color: Colors.white, // Đặt màu chữ của tiêu đề là trắng
          ),
        ),
        centerTitle: true, // Căn giữa tiêu đề của AppBar
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 160,
              height: 80,
              margin: EdgeInsets.only(
                  top: 10), // Khoảng cách 10px từ các cạnh trái và phải
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black,
                  width: 4,
                ),
              ),
              child: FittedBox(
                fit: BoxFit
                    .contain, // Đảm bảo văn bản vừa với kích thước của box
                child: Center(
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Color(0xFF323232),
                height: 100,
                width: 100,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'TAMK',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Container(
                color: Color(0xFF666666),
                height: 200,
                width: 100,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Flutter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Container(
                color: Color(0xFF999999),
                height: 100,
                width: 100,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'THWS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Center(
            child: Container(
              height: 120,
              width: 200,
              margin: EdgeInsets.only(
                  bottom: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 4,
                ),
              ),
              child: Image.asset(
                'assets/images/thws-logo.jpeg', // Replace 'assets/image.jpg' with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
