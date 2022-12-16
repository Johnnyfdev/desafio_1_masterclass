import 'package:desafio_1_masterclass/read_yaml/usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() {
    WidgetsFlutterBinding.ensureInitialized();
  });
  group('usecase ...', () {
    test('get Yaml', () async {
      GetDataYaml getDataYaml = GetDataYaml();

      var data = await getDataYaml();
      debugPrint(data.toString());
    });
  });
}
