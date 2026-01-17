import 'package:flutter/material.dart';

class Addnewpage extends StatefulWidget {
  const Addnewpage({super.key});

  @override
  State<Addnewpage> createState() => _AddnewpageState();
}

class _AddnewpageState extends State<Addnewpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView
        (child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("add new page"),
        ),)),
    );
  }
}