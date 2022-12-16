import 'package:desafio_1_masterclass/read_yaml/entity.dart';
import 'package:yaml/yaml.dart';

class Adapter {
  static Map yamlToMap(String yaml) {
    var map = loadYaml(yaml) as Map;
    return map;
  }

  static TestEntity mapToEntity(Map map) => TestEntity(
        map['name'] as String,
        map['class'] as String,
        map['age'] as int,
        List<String>.from(map['skills'] as List),
      );
}
