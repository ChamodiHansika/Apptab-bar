import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainHome(),
    );
  }
}

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  String _value = 'one';
  // var _projectname=['Project EMP','Project PMS','Project LMS'];

  List<String> items = ["ToDo", "Started", "In progress", "QA", "done"];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Row(children: <Widget>[
            Text(
              "Lenzz",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset(
              'images/edit.jpg',
              height: 40,
              width: 40,
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(1.0),
                      child: DropdownButton<String>(
                        dropdownColor: Colors.cyan,
                        items: [
                          DropdownMenuItem<String>(
                            value: "1",
                            child: Center(
                              child: Text("Project EMP"),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: "2",
                            child: Center(
                              child: Text("Project PMS"),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: "3",
                            child: Center(
                              child: Text("Project AMS"),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: "4",
                            child: Center(
                              child: Text("Project LMS"),
                            ),
                          )
                        ],
                        onChanged: (_value) => {
                          print(_value.toString()),
                        },
                        hint: Text(
                          "Projects",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              ),
            ),
            Image.asset(
              'images/sew.png',
              height: 40,
              width: 40,
              alignment: Alignment.topRight,
            ),
          ])),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(5),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            margin: EdgeInsets.all(5),
                            width: 80,
                            height: 45,
                            decoration: BoxDecoration(
                              color: current == index
                                  ? Colors.red[300]
                                  : Colors.lightBlue[200],
                              borderRadius: current == index
                                  ? BorderRadius.circular(15)
                                  : BorderRadius.circular(10),
                              border: current == index
                                  ? Border.all(
                                  color: Colors.blueAccent, width: 2)
                                  : null,
                            ),
                            child: Center(
                              child: Text(
                                items[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: current == index
                                        ? Colors.black
                                        : Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                            visible: current == index,
                            child: Container(
                              width: 5,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color: Colors.deepPurpleAccent,
                                  shape: BoxShape.circle),
                            ))
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
