/// A pool of bot sign-ins, by name, such as `teams`, that a trajectory
/// leases one bot from. A rule names the pool, never the bot, since it is
/// written before any bot is leased.
final class BotPool {
  const BotPool._(this.name);

  /// [raw] as a bot pool's name, or null unless it is lowercase letters,
  /// digits, `-` and `_`.
  static BotPool? parse(String raw) =>
      _name.hasMatch(raw) ? BotPool._(raw) : null;

  final String name;

  @override
  bool operator ==(Object other) => other is BotPool && other.name == name;

  @override
  int get hashCode => name.hashCode;

  @override
  String toString() => name;
}

final _name = RegExp(r'^[a-z0-9][a-z0-9_-]*$');

Object? encodeBotPool(BotPool pool) => pool.name;

BotPool decodeBotPool(Object? json, [String field = 'botPool']) {
  final raw = switch (json) {
    final String s => s,
    _ => throw FormatException('$field: not a string'),
  };
  return BotPool.parse(raw) ??
      (throw FormatException('$field: not a bot pool ($raw)'));
}
