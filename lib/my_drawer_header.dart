import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 152,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF10AB83),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15,top: 50),
            child: Text("X",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w600),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,top: 40),
            child: Text("Demo Limited Company",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w600),),
          ),
        ],
      ),
    );
  }
}