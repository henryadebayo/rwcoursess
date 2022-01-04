
import 'package:rwcourses/model/courses.dart';

abstract class Repository {

Future<List <Course>> getCourse(int domainFilter);

}