import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AmazonPrimeFirebaseUser {
  AmazonPrimeFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

AmazonPrimeFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AmazonPrimeFirebaseUser> amazonPrimeFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<AmazonPrimeFirebaseUser>(
        (user) => currentUser = AmazonPrimeFirebaseUser(user));
