 import 'package:rwcourses/model/courses.dart';
import 'repository.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';


class CourseRepository implements Repository{
  String dataUrl = 'https://api.raywenderlich.com/api/contents?filter[content_types][]=collection';

  @override
  Future<List<Course>> getCourse(int domainFilter) async{
    final courses = <Course>[];
    var url = dataUrl;
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final apiResponse = json.decode(response.body);
    return courses;
  }

}
