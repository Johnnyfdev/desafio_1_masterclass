import 'package:flutter/services.dart';

class Datasource {
  Future<String> getDataYaml() async {
    var data = await rootBundle.loadString('assets/yaml/teste.yaml');
    return data;
  }
}
