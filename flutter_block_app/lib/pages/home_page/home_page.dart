import 'package:flutter/material.dart';
import 'package:flutter_block_app/pages/home_page/widgets/searchbox.dart';
import 'package:flutter_block_app/widgets/appbar/appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: appbarLading,
        title: appbarTittle,
        actions: appbarAction,
        shadowColor: Colors.black12,
        elevation: 5,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
           Searchbox(),
           Text("Explore Categories",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 15,
                
              ),
              
              ),
            
          ],
        ),
      ),
    );
  }
}
