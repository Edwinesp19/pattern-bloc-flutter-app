part of 'user_bloc.dart';


@immutable
abstract class UserEvent{}

class ActivateUser extends UserEvent{
  final User user; 
  ActivateUser({required this.user});
}

class ChangeUserAge extends UserEvent{
  final int age;
  ChangeUserAge({required this.age});
}

class AddProfession extends UserEvent{
  final String profesion;
  AddProfession({required this.profesion});
}

class DeleteUser extends UserEvent{}
