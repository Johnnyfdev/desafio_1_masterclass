import 'entity.dart';
import 'repository.dart';

class GetDataYaml {
  // FIXME: CHANGE TO DI
  final Repository repository = Repository();

  Future<TestEntity> call() async {
    var data = await repository.getData();
    return data;
  }
}
