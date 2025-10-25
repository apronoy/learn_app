import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_prectice/progress_indicator/controler/progress_ind_controler.dart';
import 'package:work_prectice/progress_indicator/view/home.dart';

void main() {
  Get.put(ProgressController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stepper with GetX',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}
