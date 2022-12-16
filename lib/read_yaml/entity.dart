class TestEntity {
  final String name;
  final String className;
  final int age;
  final List<String> skills;

  TestEntity(this.name, this.className, this.age, this.skills);

  @override
  String toString() {
    return 'TestEntity {\nname: $name,\nclassName: $className,\nage: $age,\nskills: $skills\n}';
  }
}
