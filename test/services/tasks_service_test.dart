import 'package:flutter_test/flutter_test.dart';
import 'package:nick_test/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('TasksServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
