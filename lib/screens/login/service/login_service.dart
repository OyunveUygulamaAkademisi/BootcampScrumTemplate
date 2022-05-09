import 'package:firebase_auth/firebase_auth.dart';
import 'package:swapy/screens/login/model/login_request_model.dart';

class LoginService {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<UserCredential?> loginWithEmailAndPassword(
      LoginRequestModel request) async {
    return await auth.signInWithEmailAndPassword(
        email: request.email!, password: request.password!);
  }
}
