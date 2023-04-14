part of 'user_bloc.dart';

@immutable
abstract class UserState {
  final bool userExiste;
  final User? user;

  const UserState({this.userExiste = false, this.user});
}

class UserInitialState extends UserState {
  const UserInitialState() : super(user: null, userExiste: false);
}
