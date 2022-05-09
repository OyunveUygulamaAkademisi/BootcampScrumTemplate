class RegisterRequestModel {
  String? userName;
  String? email;
  String? password;
  String? rePassword;

  RegisterRequestModel(
      {this.userName, this.email, this.password, this.rePassword});

  bool get isNotEmpty =>
      ![this.email, this.password, this.rePassword, this.userName]
          .contains(null) &&
      this.email!.isNotEmpty &&
      this.userName!.isNotEmpty &&
      this.password!.isNotEmpty &&
      this.rePassword!.isNotEmpty;
}
