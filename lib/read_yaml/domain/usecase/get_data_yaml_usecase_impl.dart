import '../../entity.dart';
import '../../repository.dart';
import 'get_data_yaml_usecase.dart';

class GetDataYamlUseCaseImpl implements GetDataYamlUseCase {
  // FIXME: CHANGE TO DI
  final Repository repository = Repository();
  @override
  Future<TestEntity> call() async {
    return await repository.getData();
  }
}
