import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'chooseProject.dart';

void main() => runApp(
  DevicePreview(
    builder: (context) => MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: ListItem(),
        );
    }
}