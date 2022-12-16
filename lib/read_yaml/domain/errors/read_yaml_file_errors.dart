import '../../../core/errors/desafio_error.dart';

abstract class ReadYamlFileErrors extends DesafioErrors {
  ReadYamlFileErrors(String message) : super(message: message);
}

class UnknowReadYamlFileError extends ReadYamlFileErrors {
  UnknowReadYamlFileError() : super('Unknow Read Yaml File Error');
}

// TODO: ADD ERRORS