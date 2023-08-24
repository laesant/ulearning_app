import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/pages/sign_in/bloc/sign_in_events.dart';
import 'package:ulearning_app/pages/sign_in/bloc/sign_in_states.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(const SignInState()) {
    on<EmailEvent>(_changeEmail);
    on<PasswordEvent>(_changePassword);
  }

  FutureOr<void> _changeEmail(EmailEvent event, Emitter<SignInState> emit) {
    emit(state.copyWith(email: event.email));
  }

  FutureOr<void> _changePassword(
      PasswordEvent event, Emitter<SignInState> emit) {
    emit(state.copyWith(password: event.password));
  }  
}
