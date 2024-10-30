class CredentialModel {
  String email;
  String password;

  CredentialModel({this.email = '', this.password = ''});

  setEmail(String email) {
    this.email = email;
  }

  setPassword(String password) {
    this.password = password;
  }

  @override
  String toString() {
    return 'CredentialModel({$email, $password})';
  }
}
