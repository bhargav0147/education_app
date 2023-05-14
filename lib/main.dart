import 'package:device_preview/device_preview.dart';
import 'package:education_app/provider/aapProvider.dart';
import 'package:education_app/view/homeScreen.dart';
import 'package:education_app/view/visitScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => HomeScreen(),
          'visit':(context) => VisitScreen(),
        },
      ),
    ),
  ));
}
