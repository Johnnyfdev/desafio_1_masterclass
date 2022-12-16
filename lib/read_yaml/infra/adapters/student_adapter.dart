import '../../domain/entities/student_entity.dart';

class StudentAdapter {
  static StudentEntity mapToEntity(Map map) => StudentEntity(
        map['name'] as String,
        map['class'] as String,
        map['age'] as int,
        List<String>.from(map['skills'] as List),
      );
}
