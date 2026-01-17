import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner/data/userdata.dart';
import 'package:workout_planner/models/user.dart';
import 'package:workout_planner/widgets/exersiceCard.dart';
import 'package:workout_planner/widgets/progressCard.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final DateFormat formatter = DateFormat("EEEE,MMMM");
  final DateFormat dayformtter = DateFormat('dd');
  final userdatas = user;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formatter.format(now);
    String formattedDay = dayformtter.format(now);

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${userdatas.fullName}",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              Text(
                "$formattedDate $formattedDay",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProgressCard(progresValue: 0.4, total:100),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text("Today’s Activity",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                )
                ),
              ),
              SizedBox(height: 15,),
             
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   ExersiceCard(exersiceName: "push Up", imgIrl: "assets/images/exercises/cobra.png", descprition: "see more..."),
                   ExersiceCard(exersiceName: "push Up", imgIrl: "assets/images/equipments/dumbbells2.png", descprition: "see more..."),
                ],
               ),
             ),
             SizedBox(height: 15,),
              Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   ExersiceCard(exersiceName: "push Up", imgIrl: "assets/images/exercises/dragging.png", descprition: "see more..."),
                    ExersiceCard(exersiceName: "push Up", imgIrl: "assets/images/exercises/yoga.png", descprition: "see more..."),
                ],
               ),
             )


            ],
          ),
        ),
      ),
    );
  }
}
