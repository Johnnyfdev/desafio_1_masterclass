import 'package:flutter/services.dart';

import '../../../infra/datasources/local_file/read_local_file_datasource.dart';

class ReadLocalFileDatasourceImpl implements ReadLocalFileDatasource {
  @override
  Future<String> call() async {
    String path = 'assets/yaml/teste.yaml';
    var data = await rootBundle.loadString(path);
    return data;
  }
}
