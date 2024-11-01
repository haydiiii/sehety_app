class AuthStates {}
////////login////////

class AuthInitialState extends AuthStates {}

class LoginLoadingState extends AuthStates {}

class LoginSuccessState extends AuthStates {}

class LoginErrorState extends AuthStates {
  final String error;
  LoginErrorState(this.error);
}
////register as patient////

class RegisterAsPatientLoadingState extends AuthStates {}

class RegisterAsPatientSuccessState extends AuthStates {}

class RegisterAsPatientErrorState extends AuthStates {
  final String error;
  RegisterAsPatientErrorState(this.error);
}
/////register as doctor////

class RegisterAsDoctorLoadingState extends AuthStates {}

class RegisterAsDoctorSuccessState extends AuthStates {}

class RegisterAsDoctorErrorState extends AuthStates {
  final String error;
  RegisterAsDoctorErrorState(this.error);
}
