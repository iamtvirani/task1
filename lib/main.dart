import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kmphi_practical_task1/view/selection_person_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SecondTskScreen(),
    );
  }
}
