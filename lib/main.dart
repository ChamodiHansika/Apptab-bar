import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'chooseProject.dart';
import 'package:flutter/src/widgets/binding.dart';
// import 'mongodb.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await MongoDatabase.connect();
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: ListItem(),
        );
    }
}