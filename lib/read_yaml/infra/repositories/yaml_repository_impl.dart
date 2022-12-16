import 'dart:developer';

import '../../domain/entities/test_entity.dart';
import '../../domain/repositories/yaml_repository.dart';
import '../../external/datasources/local_file/read_local_file_datasource_impl.dart';
import '../adapters/adapter.dart';
import '../datasources/local_file/read_local_file_datasource.dart';

class YamlRepositoryImpl implements YamlRepository {
  // FIXME: CHANGE TO DI
  final ReadLocalYamlFileDatasource datasource = ReadLocalFileDatasourceImpl();

  @override
  Future<Map> read() async {
    try {
      var data = await datasource();
      var map = Adapter.yamlToMap(data);

      return map;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
