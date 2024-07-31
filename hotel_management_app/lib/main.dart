import 'package:flutter/material.dart';
import 'package:hotel_management_app/hotelmain_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
    Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: const HotelMainDetails(),
    );
  }
}



