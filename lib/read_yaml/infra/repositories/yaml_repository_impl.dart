import 'dart:developer';

import 'package:desafio_1_masterclass/read_yaml/domain/errors/read_yaml_file_errors.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../core/services/yaml/yaml_dto.dart';
import '../../domain/repositories/yaml_repository.dart';
import '../../domain/typedef/read_data_yaml_file_typedef.dart';
import '../datasources/local_file/read_local_file_datasource.dart';

class YamlRepositoryImpl implements YamlRepository {
  final ReadLocalFileDatasource _datasource;
  final YamlDto _yamlDto;

  YamlRepositoryImpl(this._datasource, this._yamlDto);
  @override
  ReadDataYamlFileResult read() async {
    try {
      var data = await _datasource();
      var map = _yamlDto.toMap(data);

      return Success(map);
    } catch (e) {
      log(e.toString());
      return Error(UnknowReadYamlFileError('$e'));
    }
  }
}
