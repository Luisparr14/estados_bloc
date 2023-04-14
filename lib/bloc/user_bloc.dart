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

    on<ChangeUserAge>((event, emit) {
      if (!state.userExist) return;
      final newUser = state.user!.copyWith(age: event.age);
      emit(SetUserState(newUser));
    });

    on<AddProfession>((event, emit) {
      if (!state.userExist) return;
      final newUser = state.user!.copyWith(
          professions: [...state.user!.professions, event.profession]);
      emit(SetUserState(newUser));
    });

    on<DeleteUser>((event, emit) {
      if (!state.userExist) return;
      emit(const UserInitialState());
    });
  }
}
