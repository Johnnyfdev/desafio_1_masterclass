import 'package:desafio_1_masterclass/read_yaml/domain/usecases/get_data_yaml_usecase.dart';
import 'package:desafio_1_masterclass/read_yaml/domain/usecases/get_data_yaml_usecase_impl.dart';
import 'package:desafio_1_masterclass/read_yaml/infra/repositories/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() {
    WidgetsFlutterBinding.ensureInitialized();
  });
  group('usecase ...', () {
    test('get Yaml', () async {
      final ReadYamlRepository repository = ReadYamlRepository();
      GetDataYamlUseCase getDataYaml = GetDataYamlUseCaseImpl();

      var data = await getDataYaml();
      debugPrint(data.toString());
    });
  });
}
