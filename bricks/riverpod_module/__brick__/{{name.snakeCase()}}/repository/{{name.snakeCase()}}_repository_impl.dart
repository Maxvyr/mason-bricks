import 'package:hooks_riverpod/hooks_riverpod.dart';
import '{{name.snakeCase()}}_repository.dart';

class {{name.pascalCase()}}Repository {
  // TODO add your methods here
}

final {{name.camelCase()}}RepositoryProvider = Provider((ref) {
  return {{name.pascalCase()}}Repository();
});
