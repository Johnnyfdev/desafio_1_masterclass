import '../../infra/repositories/yaml_repository_impl.dart';
import '../repositories/yaml_repository.dart';
import 'get_data_yaml_usecase.dart';

class GetDataYamlUseCaseImpl implements GetDataYamlUseCase {
  // FIXME: CHANGE TO DI
  final YamlRepository repository = YamlRepositoryImpl();
  @override
  Future<Map> call() async {
    return await repository.read();
  }
}
