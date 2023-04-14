import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

import '../models/user.dart';

part 'user_events.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvents, UserState> {
  UserBloc() : super(const UserInitialState()) {
    on<ActivateUser>((event, emit) {
      emit(SetUserState(event.user));
    });
  }
}
