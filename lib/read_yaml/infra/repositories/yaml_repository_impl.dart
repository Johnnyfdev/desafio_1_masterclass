import 'dart:developer';

import '../../../core/services/yaml/yaml_dto.dart';
import '../../../core/services/yaml/yaml_dto_impl.dart';
import '../../domain/repositories/yaml_repository.dart';
import '../../external/datasources/local_file/read_local_file_datasource_impl.dart';
import '../datasources/local_file/read_local_file_datasource.dart';

class YamlRepositoryImpl implements YamlRepository {
  // FIXME: CHANGE TO DI
  final ReadLocalYamlFileDatasource datasource = ReadLocalFileDatasourceImpl();
  final YamlDto yamlDto = YamlDtoImpl();

  @override
  Future<Map> read() async {
    try {
      var data = await datasource();
      var map = yamlDto.toMap(data);

      return map;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
