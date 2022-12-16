import 'package:desafio_1_masterclass/read_yaml/domain/repositories/yaml_repository.dart';
import 'package:desafio_1_masterclass/read_yaml/domain/usecases/get_data_yaml_usecase.dart';
import 'package:desafio_1_masterclass/read_yaml/domain/usecases/read_data_yaml_usecase_impl.dart';
import 'package:desafio_1_masterclass/read_yaml/infra/adapters/test_adapter.dart';

import 'package:desafio_1_masterclass/read_yaml/infra/repositories/yaml_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() {
    WidgetsFlutterBinding.ensureInitialized();
  });
  group('usecase ...', () {
    test('get Yaml', () async {
      final YamlRepository repository = YamlRepositoryImpl();
      final GetDataYamlUseCase getDataYamlUsecase = GetDataYamlUseCaseImpl();

      var data = await getDataYamlUsecase();
      var entity = TestAdapter.mapToEntity(data);

      debugPrint(entity.toString());
    });
  });
}
