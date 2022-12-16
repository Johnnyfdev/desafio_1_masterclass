import 'dart:developer';

import 'package:desafio_1_masterclass/read_yaml/domain/entities/test_entity.dart';
import 'package:desafio_1_masterclass/read_yaml/external/datasources/local_file/read_local_file_datasource_impl.dart';

import '../adapters/adapter.dart';
import '../datasources/local_file/read_local_file_datasource.dart';

class ReadYamlRepository {
  // FIXME: CHANGE TO DI
  final ReadLocalYamlFileDatasource datasource = ReadLocalFileDatasourceImpl();

  Future<TestEntity> getData() async {
    try {
      var data = await datasource();
      var map = Adapter.yamlToMap(data);
      var entity = Adapter.mapToEntity(map);

      return entity;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
