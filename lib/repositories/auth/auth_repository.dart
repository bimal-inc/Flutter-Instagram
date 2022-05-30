import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_instagram/repositories/repositories.dart';

class AuthRepository extends BaseAuthRepository {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseAuth _firebaseAuth;

  AuthRepository(FirebaseFirestore firebaseFirestore, FirebaseAuth firebaseAuth)
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance,
        _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  @override
  // TODO: implement user
  Stream<User> get user => _firebaseAuth.userChanges();

  @override
  Future<User> signUpWithEmailAndPassword(
      String username, String email, String password) {
    // TODO: implement signUpWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<User> logInWithEmailAndPassword(String email, String password) {
    // TODO: implement logInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<void> logOut() {
    // TODO: implement logOut
    throw UnimplementedError();
  }
}
