import 'package:desafio_1_masterclass/core/services/yaml/yaml_dto_impl.dart';
import 'package:desafio_1_masterclass/read_yaml/domain/repositories/yaml_repository.dart';
import 'package:desafio_1_masterclass/read_yaml/domain/usecases/read_data_yaml_usecase.dart';
import 'package:desafio_1_masterclass/read_yaml/domain/usecases/read_data_yaml_usecase_impl.dart';
import 'package:desafio_1_masterclass/read_yaml/external/datasources/local_file/read_local_file_datasource_impl.dart';
import 'package:desafio_1_masterclass/read_yaml/infra/adapters/student_adapter.dart';
import 'package:desafio_1_masterclass/read_yaml/infra/repositories/yaml_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() {
    WidgetsFlutterBinding.ensureInitialized();
  });
  group('usecase ...', () {
    test('get Yaml', () async {
      final YamlRepository repository = YamlRepositoryImpl(
        ReadLocalFileDatasourceImpl(),
        YamlDtoImpl(),
      );
      final GetDataYamlUseCase getDataYamlUsecase =
          GetDataYamlUseCaseImpl(repository);

      var data = await getDataYamlUsecase();
      var entity = StudentAdapter.mapToEntity(data);

      debugPrint(entity.toString());
    });
  });
}
