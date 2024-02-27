import 'package:child_care/views/screens/callender_attendence.dart';
import 'package:child_care/views/screens/child_today_update_page.dart';
import 'package:child_care/views/screens/homepage.dart';
import 'package:child_care/views/screens/leave_request.dart';
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
      home: LeaveRequestPage(),
    );
  }
}
