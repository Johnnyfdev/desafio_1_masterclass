import '../entities/test_entity.dart';
import '../../infra/repositories/repository.dart';
import 'get_data_yaml_usecase.dart';

class GetDataYamlUseCaseImpl implements GetDataYamlUseCase {
  // FIXME: CHANGE TO DI
  final ReadYamlRepository repository = ReadYamlRepository();
  @override
  Future<TestEntity> call() async {
    return await repository.getData();
  }
}
