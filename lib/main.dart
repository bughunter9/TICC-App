import 'package:flutter/material.dart';
import 'package:ticc/screens/home/home.dart';
import 'package:ticc/screens/loader/loading.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
    }
));
