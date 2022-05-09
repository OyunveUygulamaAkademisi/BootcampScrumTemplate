class LoginRequestModel{
  String? email;
  String? password;

  LoginRequestModel({this.email, this.password});

  bool get isNotEmpty => ![this.password, this.email]
      .contains(null) &&
      this.email!.isNotEmpty &&
      this.password!.isNotEmpty;
}