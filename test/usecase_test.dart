import 'package:desafio_1_masterclass/core/services/yaml/yaml_dto_impl.dart';
import 'package:desafio_1_masterclass/read_yaml/domain/repositories/yaml_repository.dart';
import 'package:desafio_1_masterclass/read_yaml/domain/usecases/read_data_yaml_usecase.dart';
import 'package:desafio_1_masterclass/read_yaml/domain/usecases/read_data_yaml_usecase_impl.dart';
import 'package:desafio_1_masterclass/read_yaml/external/datasources/local_file/read_local_file_datasource_impl.dart';
import 'package:desafio_1_masterclass/read_yaml/infra/repositories/yaml_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final YamlRepository repository = YamlRepositoryImpl(
    ReadLocalFileDatasourceImpl(),
    YamlDtoImpl(),
  );

  setUpAll(() {
    WidgetsFlutterBinding.ensureInitialized();
  });

  group('READ YAML DATA FILE', () {
    test('Must return a Map from reading YAML File', () async {
      final GetDataYamlUseCase getDataYamlUsecase =
          GetDataYamlUseCaseImpl(repository);
      var data = await getDataYamlUsecase();

      debugPrint(data.toString());

      expect(data, isA<Map>());
    });
  });
}
