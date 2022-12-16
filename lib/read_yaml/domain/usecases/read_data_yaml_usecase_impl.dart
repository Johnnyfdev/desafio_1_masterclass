import '../repositories/yaml_repository.dart';
import '../typedef/read_data_yaml_file_typedef.dart';
import 'read_data_yaml_usecase.dart';

class GetDataYamlUseCaseImpl implements GetDataYamlUseCase {
  final YamlRepository _repository;

  GetDataYamlUseCaseImpl(this._repository);

  @override
  ReadDataYamlFileResult call() async {
    return await _repository.read();
  }
}
