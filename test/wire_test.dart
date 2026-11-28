import 'package:is_sign_in_vocabulary/is_sign_in_vocabulary.dart';
import 'package:test/test.dart';

void main() {
  group('SignIn', () {
    test('round-trips', () {
      final signIn = SignIn.parse('some-bot')!;
      expect(decodeSignIn(encodeSignIn(signIn)), signIn);
    });

    test('refuses an invalid name', () {
      expect(() => decodeSignIn('Not Valid'), throwsFormatException);
    });
  });

  group('BotPool', () {
    test('round-trips', () {
      final pool = BotPool.parse('teams')!;
      expect(decodeBotPool(encodeBotPool(pool)), pool);
    });

    test('refuses an invalid name', () {
      expect(() => decodeBotPool('Teams Pool'), throwsFormatException);
    });
  });
}
