import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

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
              Transform(
                transform: Matrix4.skewX(-0.7),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        bottomLeft: Radius.circular(360)),
                    color: Colors.pink,
                  ),
                  width: 70,
                  height: 30,
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
                child: Transform(
                  transform: Matrix4.skewX(-0.7)..absolute(),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(300),
                          bottomRight: Radius.circular(10)),
                      color: Colors.pink[100],
                    ),
                    width: 70,
                    height: 30,
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
