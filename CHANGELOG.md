# Changelog

## 0.1.0

- `SignIn`, with `encodeSignIn` / `decodeSignIn`, moved unchanged from
  `is_effects` 0.14.2, which re-exports it. A package that needs a sign-in
  but not `is_effects`, such as `is_tools_api`, depends on this alone.
