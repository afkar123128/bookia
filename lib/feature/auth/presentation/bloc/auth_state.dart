class authstate {}

class authanitial extends authstate {}

class LoginlodingState extends authstate {}

class LoginSuccessSTATE extends authstate {}



class RegisterlodingState extends authstate {}

class RegisterSuccessSTATE extends authstate {}

class authErrorSTATE extends authstate {
  final String error;
  authErrorSTATE(this.error);
}
