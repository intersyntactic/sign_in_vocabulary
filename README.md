# is_sign_in_vocabulary

`SignIn`: one of the person's sign-ins, by name, such as `some-bot`. Never
the secret: the driver holds that, so it reaches neither a tool nor the
logbook. `SignIn.parse` returns null unless the name is lowercase letters,
digits, `-` and `_`, starting with a letter or digit.

`encodeSignIn` / `decodeSignIn` carry it as a JSON string. A decode throws a
`FormatException` naming the field.

It holds types and does nothing, and depends on nothing but `dart:core`.
`is_effects` re-exports it, so its `SignIn` and this one are the same type.
