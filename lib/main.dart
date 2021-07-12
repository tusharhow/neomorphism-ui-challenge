import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: Colors.grey[300],
        child: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(56),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 15,
                  spreadRadius: 1.0,
                  offset: Offset(4, 4),
                ),
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 15,
                  spreadRadius: 1.0,
                  offset: Offset(-4, -4),
                ),
              ],
            ),
            child: Center(
              child: Image(
                image: AssetImage('images/apple.png'),
                height: 80,
                color: Colors.black26,
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
