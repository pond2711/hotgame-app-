import 'package:flutter/material.dart';
import 'package:game_app/games.dart';
import 'package:game_app/homepage.dart';
import 'Image_listview_page.dart';

main(){
 runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false, //remove debug sign
    title: "Pond's App",
    theme: ThemeData(
      primarySwatch: Colors.lightBlue, //set theme color
    ),
    home: const MainPage(title: "Pond's App"),
  );
 }
}
class MainPage extends StatefulWidget {
  const MainPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MainPage> createState() => _MainPageState();
}
class _MainPageState extends State<MainPage> {
  int intCurrentIndex = 0; //เริ่มที่หน้าอะไร
  String strWelcome = "Hello";
  final screens = [
    HomePage(title: 'Home'),
    Listview(),
    Gameview(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text(widget.title),
        actions: <Widget>[  //ทางขวา
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.chat), color: Colors.white,
          ),
        ],
      ),
      body: screens[intCurrentIndex],
      
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: intCurrentIndex, //เริ่มต้นหน้า
          onTap: (index) => setState(() {
              intCurrentIndex = index;
            }),
          backgroundColor: Colors.lightBlue,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Colors.white,
          iconSize: 30,
          selectedFontSize: 18,
          unselectedFontSize: 10,
          type: BottomNavigationBarType.fixed,
        // showSelectedLabels: false,
          showUnselectedLabels: false,
        
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), 
              label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.games_rounded), 
              label: 'Games'),
            BottomNavigationBarItem(icon: Icon(Icons.games_rounded), 
              label: 'Games'),
            ]
          ),
        );
      }
    }
