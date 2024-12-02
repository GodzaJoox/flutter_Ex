import 'package:flutter/material.dart';

class MyScrollView extends StatelessWidget {
  const MyScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ScrollView"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Row(
            children: [
              boxContainer("One"),
              boxContainer("Two"),
              boxContainer("Three")
            ],
          ),
        ),
      ),
    );
  }
  Widget boxContainer (String txt) => Container(
    width: 250,
    height: 250,
    margin: const EdgeInsets.all(20),
    padding: const EdgeInsets.all(20),
    alignment: Alignment.center,
    decoration:  BoxDecoration(
      color: const Color(0xFF000000),
      border:  Border.all(
        color:const Color(0xFFFFFFFF))
    ),
    child: Text(txt,style: const TextStyle(fontSize: 30,color: Color(0xFFFFFFFF)),),
  );
}