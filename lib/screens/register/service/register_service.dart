import 'package:firebase_auth/firebase_auth.dart';
import 'package:swapy/screens/register/model/register_request_model.dart';

class RegisterService {
  final auth = FirebaseAuth.instance;

  Future<UserCredential?> register(RegisterRequestModel request) async {
    return await auth.createUserWithEmailAndPassword(
        email: request.email!, password: request.password!);
  }
}