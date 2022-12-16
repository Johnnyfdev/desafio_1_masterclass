import 'package:flutter/services.dart';

import '../../../infra/datasources/local_file/read_local_file_datasource.dart';

class ReadLocalFileDatasourceImpl implements ReadLocalYamlFileDatasource {
  @override
  Future<String> call() async {
    var data = await rootBundle.loadString('assets/yaml/teste.yaml');
    return data;
  }
}
