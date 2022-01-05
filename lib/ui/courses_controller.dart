import 'package:rwcourses/model/courses.dart';
import 'package:rwcourses/repository/course_Repository.dart';

import '../../repository/repository.dart';

class CoursesController{
final Repository _repository = CourseRepository();

Future<List<Course>> fetchCourses(int domainFilter){
  return _repository.getCourse(domainFilter); 
}

}