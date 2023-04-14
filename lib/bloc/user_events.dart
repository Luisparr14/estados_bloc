part of 'user_bloc.dart';

@immutable
abstract class UserEvents {}

class ActivateUser extends UserEvents {
  final User user;

  ActivateUser(this.user);
}

class ChangeUserAge extends UserEvents {
  final int age;
  ChangeUserAge(this.age);
}

class AddProfession extends UserEvents {
  final String profession;
  AddProfession(this.profession);
}
