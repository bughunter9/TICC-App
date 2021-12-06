import 'package:flutter/material.dart';
import 'package:ticc/screens/home/home.dart';
import 'package:ticc/screens/loader/loading.dart';

void main() => runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
      primaryColor:Color(0xFF960D0A),
      scaffoldBackgroundColor: Colors.white,
    ),
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
    })
);

// }

