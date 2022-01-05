

import 'package:flutter/material.dart';
import 'package:rwcourses/ui/courses_page.dart';

class RwCourses extends StatefulWidget {
  const RwCourses({Key? key}) : super(key: key);

  @override
  _RwCoursesState createState() => _RwCoursesState();
}

class _RwCoursesState extends State<RwCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: const CoursesPage(),
    );
  }
}
