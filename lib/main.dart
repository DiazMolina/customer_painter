import 'package:flutter/material.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'CUSTOM SLIDER',
          style: TextStyle(color: Colors.pink),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomSlider(),
          ],
        ),
      ),
    );
  }
}

class CustomSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 20.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(90),
                      bottomLeft: Radius.circular(90)),
                  gradient: LinearGradient(
                    colors: [Colors.pink, Colors.white],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(0.5, 0.5),
                    stops: [15, 9.0],
                  ),
                ),
                padding: EdgeInsets.only(left: 25),
                width: 70,
                child: Transform(
                  transform: Matrix4.skewX(-0.7),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.pink,
                    ),
                    width: 70,
                    height: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 77.0),
                child: Transform(
                  transform: Matrix4.skewX(-0.7),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.pink[100]),
                    width: 70,
                    height: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 154.0),
                child: Transform(
                  transform: Matrix4.skewX(-0.7),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.pink[100],
                    ),
                    width: 70,
                    height: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 228.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(90),
                        bottomRight: Radius.circular(90)),
                    gradient: LinearGradient(
                      colors: [Colors.white, Colors.pink[100]],
                      begin: FractionalOffset(0.0, 0.0),
                      end: FractionalOffset(0.5, 0.5),
                      stops: [15, 9.0],
                    ),
                  ),
                  padding: EdgeInsets.only(right: 15),
                  width: 60,
                  child: Transform(
                    transform: Matrix4.skewX(-0.7)..absolute(),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.pink[100],
                      ),
                      width: 70,
                      height: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
