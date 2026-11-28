// This file only compiles while is_sign_in_vocabulary.dart exports no
// BotPool: is_effects 0.19 and earlier import it beside their own BotPool,
// and two imports of one name is a compile error, just as here.
import 'package:is_sign_in_vocabulary/is_sign_in_vocabulary.dart';
import 'package:test/test.dart';

import 'support/a_bot_pool_of_its_own.dart';

void main() {
  test('the main library leaves BotPool to bot_pool.dart', () {
    expect(const BotPool(), isA<BotPool>());
    expect(SignIn.parse('some-bot'), isNotNull);
  });
}
