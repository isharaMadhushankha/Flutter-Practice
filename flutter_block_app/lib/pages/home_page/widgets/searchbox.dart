import 'package:flutter/material.dart';

class Searchbox extends StatelessWidget {
  const Searchbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 5, 5),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffD9D9D9).withOpacity(0.50),
                border: Border.all(
                  color: Color(0xff3B3636).withOpacity(0.47),
                ),
              ),

              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Icon(
                      Icons.search,
                      color: Color(0xff3B3636).withOpacity(0.47),
                    ),
                  ),

                  Expanded( // must add expand. get available width. can use if we want increse the with of like container
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: "Search here...",
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Colors.black45
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 9)
                      ),
                    )
                  )


                ],
              ),
            ),
          );
  }
}