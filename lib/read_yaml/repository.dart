import 'dart:developer';

import 'package:desafio_1_masterclass/read_yaml/entity.dart';

import 'adapter.dart';
import 'datasource.dart';

class Repository {
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
