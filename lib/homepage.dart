import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
 //change when reload app
 const HomePage({Key? key, required this.title}) : super(key: key);
 final String title;
 @override
 State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
 @override
 Widget build(BuildContext context) {
 return Center(
    child: Container(
      height: 250.0,
      width: 250.0,
      decoration: BoxDecoration( //สามารถใส่รูป
        image: const DecorationImage(
          image: AssetImage('assets/images/gamepad_icon.png'),
          fit: BoxFit.fill,
        ),
        border: Border.all( //กำหนดเส้น
          width: 3,color: Colors.blue , 
        ),
        shape: BoxShape.circle, //รูปทรง
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
              blurRadius: 10.0, // soften the shadow
              spreadRadius: 5.0, //extend the shadow
              offset: Offset( //กำหนดองศาเงา 
                5.0, // Move to right 5 horizontally
                5.0, // Move to bottom 5 Vertically
                ),
              )
            ],
          ),
        ),
      );
    }
  }