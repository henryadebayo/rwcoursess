import 'package:flutter/material.dart';
import 'package:rwcourses/model/courses.dart';
import 'package:rwcourses/ui/courses_controller.dart';



class CoursesPage extends StatefulWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  _CoursesPageState createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  final _controller = CoursesController();


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Course>>(future: _controller.fetchCourses(12),
    builder: (context,snapshot){
      final courses = snapshot.data;
      if (courses == null){
         return const Center(child: CircularProgressIndicator(),);
      }
      return Text("data");
    }
    );
  }
}
