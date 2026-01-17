import 'package:flutter/material.dart';

Widget appbarLading =  Padding(
          padding: const EdgeInsets.fromLTRB(3, 5, 3, 5),
          
          child: Container(
            margin: EdgeInsets.fromLTRB(5,0,0,0),
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Color(0xff9E00FF)
          
            ),
            child: Center(
              child: Icon(
                Icons.add_location,
                color: Colors.white,

              ),
            ),
          ),
        );


Widget appbarTittle = Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Delivery Address",
              
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff3B3636).withOpacity(0.47)
              ),
              ),
              Text("92 High Street , London",
                style: TextStyle(
                fontSize: 18,
                color: Color(0xff3B3636)
              ),
              ),
            ],
            
          );
List<Widget> ? appbarAction = [ Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xffFF9900).withOpacity(0.52)
              
                ),
                child: Icon(
                  Icons.delivery_dining_sharp,
                  
                ),
              ),
            )
          ];