class authstate{}
class authanitial extends authstate{}
class LoginlodingState  extends authstate{}
class LoginSuccessSTATE  extends authstate{}
class LoginErrorSTATE  extends authstate{
  final String error;
  LoginErrorSTATE(this.error);
}

