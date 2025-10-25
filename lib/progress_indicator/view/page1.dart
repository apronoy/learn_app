import 'package:flutter/material.dart';

class Step1Page extends StatelessWidget {
  const Step1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
      
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Step 1: Personal Info', style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
