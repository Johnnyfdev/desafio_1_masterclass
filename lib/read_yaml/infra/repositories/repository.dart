import 'dart:developer';

import 'package:desafio_1_masterclass/read_yaml/domain/entities/test_entity.dart';

import '../adapters/adapter.dart';
import '../../datasource.dart';

class ReadYamlRepository {
  // FIXME: CHANGE TO DI
  final Datasource datasource = Datasource();

  Future<TestEntity> getData() async {
    try {
      var data = await datasource.getDataYaml();
      var map = Adapter.yamlToMap(data);
      var entity = Adapter.mapToEntity(map);

      return entity;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
