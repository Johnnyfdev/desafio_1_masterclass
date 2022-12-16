import '../repositories/yaml_repository.dart';
import 'read_data_yaml_usecase.dart';

class GetDataYamlUseCaseImpl implements GetDataYamlUseCase {
  // FIXME: CHANGE TO DI
  final YamlRepository _repository;

  GetDataYamlUseCaseImpl(this._repository);
  @override
  Future<Map> call() async {
    return await _repository.read();
  }
}
