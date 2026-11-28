# Changelog

## 0.1.1

- `BotPool`, with `encodeBotPool` / `decodeBotPool`, moved unchanged from
  `is_effects`: the pool of bot sign-ins a trajectory leases one from.

## 0.1.0

- `SignIn`, with `encodeSignIn` / `decodeSignIn`, moved unchanged from
  `is_effects` 0.14.2, which re-exports it. A package that needs a sign-in
  but not `is_effects`, such as `is_tools_api`, depends on this alone.
