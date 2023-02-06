import 'package:flutter/material.dart';

class TodoWidget extends StatelessWidget {

  List data=[
    {"color": Color(0xffff6968)},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:12.0),
      child: GridView.builder(
          itemCount: data.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
          ),
          itemBuilder: (context,index){
            return Card(
            color: Colors.blue,
            );
      },
    )
    );
  }
}
