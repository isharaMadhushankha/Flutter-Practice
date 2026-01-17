import 'package:flutter/material.dart';
import 'package:workout_planner/constant/colors.dart';

class ExersiceCard extends StatelessWidget {
  final String exersiceName;
  final String imgIrl;
  final String descprition;

  const ExersiceCard({
    super.key,
    required this.exersiceName,
    required this.imgIrl,
    required this.descprition,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      width: 165,
      
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 2
          )
        ],
        color: Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(exersiceName), 
            Image.asset(imgIrl,
             width: 100,
             height: 100,
            ),
             Text(descprition,
             style: TextStyle(
              color: kMainColor
             ),
             )
             ],
        ),
      ),
    );
    
  }
}
