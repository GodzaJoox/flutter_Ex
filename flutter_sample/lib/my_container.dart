import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        title: const Text("Using Container"),
        backgroundColor: const Color(0xFF6200EE),
      ),
      body: Center(
        child:Column(
          children: [
            container1(),
            container2(),
          ],
        )
      ),
    );
  }
  Widget container1() => Container(
        height:300 ,
        width: 300,
        margin: const EdgeInsets.only(top:25,left: 10),
        padding:  const EdgeInsets.only(top: 15, left: 30),
        decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF), // สีดำ
            borderRadius: BorderRadius.circular(10), // ทำให้มุมโค้ง (ถ้า 0 จะเป็นมุมเหลี่ยม)
            boxShadow:  [
                BoxShadow(
                  color: Colors.black.withOpacity(0.6), // เงาสีดำโปร่งแสง
                  spreadRadius: 2, // ขยายเงา
                  blurRadius: 10, // ความฟุ้งของเงา
                  offset: const Offset(3, 3), // การเลื่อนตำแหน่งเงา
                ),
            ],
        ),
        child: const Center(
          child: const Text("Meow",
            style: TextStyle(
            color: Color(0xFF000000),
            fontSize: 30
          ),
          ),
        )
        
  );
  Widget container2() => Container(
    width: 300,
    height: 200,
    margin: const EdgeInsets.only(top:100,left: 10),
    padding:  const EdgeInsets.only(top: 15, left: 30),
    decoration: BoxDecoration(
      color: const Color(0xFFFFFFFF),
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color:const Color(0xFF000000),style: BorderStyle.solid,width: 2
      ),
      boxShadow:  [
                BoxShadow(
                  color: Colors.black.withOpacity(0.6), // เงาสีดำโปร่งแสง
                  spreadRadius: 2, // ขยายเงา
                  blurRadius: 10, // ความฟุ้งของเงา
                  offset: const Offset(3, 3), // การเลื่อนตำแหน่งเงา
                ),
      ]
    ),
      child: const Center(
          child: const Text("Meow2",
            style: TextStyle(
            color: Color(0xFF000000),
            fontSize: 30
          ),
          ),
      )
  );
}