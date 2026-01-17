import 'package:flutter/material.dart';
import 'package:workout_planner/constant/colors.dart';

class ProgressCard extends StatefulWidget {
  final double progresValue;
  final int total;

  const ProgressCard({
    super.key,
    required this.progresValue,
    required this.total,
  });

  @override
  State<ProgressCard> createState() => _ProgressCardState();
}

class _ProgressCardState extends State<ProgressCard> {
  @override
  Widget build(BuildContext context) {
    int done = (widget.progresValue * widget.total).toInt();

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
         gradient: LinearGradient(colors: [kMainColor,kMainDarkBlue],
         begin: Alignment.topLeft,
         end: Alignment.bottomRight
         ),
         
         
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Proteins, Fats & Carbohydrates",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w900,
                color: kMainWhiteColor,
              
              
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Done",
                      style: TextStyle(
                        color: kMainWhiteColor,
                        fontSize: 16
                      ),
                      ),
                      Text("Total",
                      style: TextStyle(
                        color: kMainWhiteColor,
                        fontSize: 16
                      ),
                      ),
                    ],
                  ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("8 days",
                      style: TextStyle(
                        color: kMainWhiteColor,
                        fontSize: 16
                      ),
                      ),
                      Text("92 days left",
                      style: TextStyle(
                        color: kMainWhiteColor,
                        fontSize: 16
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8,),
                  LinearProgressIndicator(
                    value: widget.progresValue,
                    backgroundColor: kMainDarkBlue,
                    valueColor: AlwaysStoppedAnimation(kMainWhiteColor),
                    borderRadius: BorderRadius.circular(10),
                    minHeight: 8,
                  )
                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}
