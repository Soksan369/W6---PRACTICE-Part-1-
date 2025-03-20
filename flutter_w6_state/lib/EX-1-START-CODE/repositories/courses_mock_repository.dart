import '../models/course.dart';
import 'courses_repository.dart';

class CoursesMockRepository implements CoursesRepository {
  final List<Course> _courses = [
    Course(name: 'JAVA'),
    Course(name: 'Flutter'),
  ];

  @override
  List<Course> getCourses() {
    return _courses;
  }

  @override
  void addScore(Course course, CourseScore score) {
    final index = _courses.indexWhere((c) => c.name == course.name);
    if (index != -1) {
      _courses[index].addScore(score);
    }
  }
}