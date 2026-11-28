# Changelog

## 0.1.2

- `BotPool`, `encodeBotPool` and `decodeBotPool` move to a library of their
  own, `package:is_sign_in_vocabulary/bot_pool.dart`, and the main library
  no longer exports them. 0.1.1 exported them from the main library, which
  broke `is_effects` 0.19 and earlier: each imports that library beside its
  own `BotPool`, so the name was ambiguous and would not compile. 0.1.1 is
  retracted.

## 0.1.1 (retracted)

- `BotPool`, with `encodeBotPool` / `decodeBotPool`, moved unchanged from
  `is_effects`: the pool of bot sign-ins a trajectory leases one from.

## 0.1.0

- `SignIn`, with `encodeSignIn` / `decodeSignIn`, moved unchanged from
  `is_effects` 0.14.2, which re-exports it. A package that needs a sign-in
  but not `is_effects`, such as `is_tools_api`, depends on this alone.
