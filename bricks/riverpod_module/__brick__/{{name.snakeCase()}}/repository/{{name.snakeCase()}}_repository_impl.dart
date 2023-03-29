import 'package:flutter_riverpod/flutter_riverpod.dart';

class {{name.pascalCase()}}Repository {
}

final {{name.camelCase()}}RepositoryProvider = Provider((ref) {
  return {{name.pascalCase()}}Repository();
});
