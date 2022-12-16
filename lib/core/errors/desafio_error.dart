abstract class DesafioErrors implements Exception {
  final String message;

  DesafioErrors({required this.message});

  @override
  String toString() => message;
}
