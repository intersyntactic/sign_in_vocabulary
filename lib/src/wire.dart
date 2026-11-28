import 'bot_pool.dart';
import 'sign_in.dart';

/// [json] as a [String], or a [FormatException] naming [field].
String _string(Object? json, String field) => switch (json) {
  final String s => s,
  _ => throw FormatException('$field: not a string'),
};

// SignIn

Object? encodeSignIn(SignIn signIn) => signIn.name;

SignIn decodeSignIn(Object? json, [String field = 'signIn']) {
  final raw = _string(json, field);
  return SignIn.parse(raw) ??
      (throw FormatException('$field: not a sign-in ($raw)'));
}

// BotPool

Object? encodeBotPool(BotPool pool) => pool.name;

BotPool decodeBotPool(Object? json, [String field = 'botPool']) {
  final raw = _string(json, field);
  return BotPool.parse(raw) ??
      (throw FormatException('$field: not a bot pool ($raw)'));
}
