import 'package:bookia/feature/auth/data/repo/auth_repo.dart';
import 'package:bookia/feature/auth/presentation/bloc/auth_event.dart';
import 'package:bookia/feature/auth/presentation/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class authblock extends Bloc<authevent, authstate> {
  authblock() : super(authanitial()) {
    on<loginevent>(login);
  }
  Future<void> login(loginevent event, Emitter<authstate> emit) async {
    emit(LoginlodingState());
    await authrepo.login(event.params).then((value) {
      if (value != null) {
        emit(LoginSuccessSTATE());
      } else {
        emit(LoginErrorSTATE("login failed"));
      }
    });
  }
}
