import 'package:yaml/yaml.dart';

import 'yaml_dto.dart';

class YamlDtoImpl implements YamlDto {
  @override
  Map toMap(String yaml) {
    var map = loadYaml(yaml) as Map;
    return map;
  }
}
