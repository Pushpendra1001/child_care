import 'package:child_care/views/screens/callender_attendence.dart';
import 'package:child_care/views/screens/students_attendence.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: studentAttendence(),
    );
  }
}
