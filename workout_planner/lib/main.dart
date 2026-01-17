import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout_planner/pages/addnewpage.dart';
import 'package:workout_planner/pages/favoritepage.dart';
import 'package:workout_planner/pages/homepage.dart';
import 'package:workout_planner/pages/profilepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int currentsate = 0;
  final List<Widget> page = [
    Homepage(),
    Addnewpage(),
    Favoritepage(),
    Profilepage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
         primaryColor: Colors.blue,
         textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme,
         
         ),),
         
           
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      home: Scaffold(
        
        bottomNavigationBar: BottomNavigationBar(
           currentIndex: currentsate,
           type: BottomNavigationBarType.fixed,
           backgroundColor: Color(0xffF7F4F4),
           selectedItemColor: Color(0xff0193FC),
           unselectedItemColor: Color(0xff333333),
           onTap: (index) {
             setState(() {
               currentsate = index;
             });
           },
          
          items: [BottomNavigationBarItem(icon: Icon (Icons.home),label: "Home"),
                  BottomNavigationBarItem(icon: Icon (Icons.add),label: "Add"),
                  BottomNavigationBarItem(icon: Icon (Icons.favorite),label: "Favorite"),
                  BottomNavigationBarItem(icon: Icon (Icons.person),label: "Profile"),
      ]),
      body: page[currentsate],
      ),
    );
    
  }
  
}


