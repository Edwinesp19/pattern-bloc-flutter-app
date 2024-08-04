import 'package:bloc/bloc.dart';
import 'package:estados/models/user.dart';
import 'package:meta/meta.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent,UserState>{
  UserBloc() : super( const UserInitialState()){
    on<ActivateUser>((event, emit)=> emit(UserSetState(event.user)));
    on<DeleteUser>((event, emit)=> emit(const UserInitialState()));
    on<ChangeUserAge>((event,emit){
      if(!state.existUser) return; 
      emit(UserSetState(state.user!.copywith(edad:event.age)));

    });
    on<AddProfession>((event, emit) {
      if(!state.existUser) return;
     
      emit(UserSetState(state.user!.copywith(profesiones: [...state.user!.profesiones,event.profesion])));
    },);
  }

}