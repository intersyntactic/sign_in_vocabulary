/// The pool of bot sign-ins a trajectory leases one from, with its JSON.
///
/// A library of its own, not exported by `is_sign_in_vocabulary.dart`:
/// `is_effects` up to 0.19 declares its own `BotPool` and imports that
/// library, so exporting one from there would make the name ambiguous and
/// stop it compiling.
library;

export 'src/bot_pool.dart';
