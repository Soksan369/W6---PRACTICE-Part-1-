import 'package:flutter/material.dart';
import '../../EX-1-START-CODE/models/course.dart';
import '../repositories/courses_repository.dart';

class CoursesProvider extends ChangeNotifier {
  final CoursesRepository _repository;
  
  CoursesProvider({required CoursesRepository repository}) : _repository = repository;
  
  List<Course> getCourses() {
    return _repository.getCourses();
  }
  
  // Get Course by ID
  Course getCourse(String courseId) {
    final courses = _repository.getCourses();
    return courses.firstWhere((course) => course.name == courseId);
  }
  
  void addScore(String courseId, CourseScore score) {
    final course = getCourse(courseId);
    _repository.addScore(course, score);
    notifyListeners();
  }
}