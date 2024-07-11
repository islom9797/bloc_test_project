
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(UnauthenticatedState()){
    on<LoginEvent>((event, emit){
      print(' on<LoginEvent>((event, emit){');
      if (event.username != '' && event.password != '') {
        emit(AuthenticatedState(username: event.username,password: event.password));

      }
    });
  }

  @override
  void onChange(Change<AuthState> change) {
    super.onChange(change);
    print(change);
  }

  @override
  void onTransition(Transition<AuthEvent, AuthState> transition) {
    super.onTransition(transition);
    print(transition);
  }
}
