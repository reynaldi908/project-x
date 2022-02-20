import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class DuplicateAppFirebaseUser {
  DuplicateAppFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

DuplicateAppFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<DuplicateAppFirebaseUser> duplicateAppFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<DuplicateAppFirebaseUser>(
            (user) => currentUser = DuplicateAppFirebaseUser(user));
