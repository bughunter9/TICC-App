import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ticc/screens/home/home.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

void openScreen() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Home()));
  }

@override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), openScreen);
  }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitCubeGrid(
          color: Colors.white,
          size: 50.0,
        )
      )
    );
  }
}
