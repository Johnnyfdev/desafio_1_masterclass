class StudentEntity {
  final String name;
  final String className;
  final int age;
  final List<String> skills;

  StudentEntity(this.name, this.className, this.age, this.skills);

  @override
  String toString() {
    return 'StudentEntity\n{\nname: $name,\nclassName: $className,\nage: $age,\nskills: $skills\n}';
  }
}
