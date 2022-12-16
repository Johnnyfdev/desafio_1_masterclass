import 'dart:developer';

import '../../../core/services/yaml/yaml_dto.dart';
import '../../domain/repositories/yaml_repository.dart';
import '../datasources/local_file/read_local_file_datasource.dart';

class YamlRepositoryImpl implements YamlRepository {
  final ReadLocalFileDatasource _datasource;
  final YamlDto _yamlDto;

  YamlRepositoryImpl(this._datasource, this._yamlDto);
  @override
  Future<Map> read() async {
    try {
      var data = await _datasource();
      var map = _yamlDto.toMap(data);

      return map;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
