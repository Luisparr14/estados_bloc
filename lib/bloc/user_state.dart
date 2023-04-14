part of 'user_bloc.dart';

@immutable
abstract class UserState {
  final bool userExist;
  final User? user;

  const UserState({this.userExist = false, this.user});
}

class UserInitialState extends UserState {
  const UserInitialState() : super(user: null, userExist: false);
}
