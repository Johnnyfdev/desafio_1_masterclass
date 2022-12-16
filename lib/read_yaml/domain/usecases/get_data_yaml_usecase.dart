import '../entities/test_entity.dart';

abstract class GetDataYamlUseCase {
  Future<TestEntity> call();
}
