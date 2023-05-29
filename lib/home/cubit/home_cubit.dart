import 'package:bloc/bloc.dart';
import 'package:doit/home/state/home_state.dart';

class HomeCubit extends Cubit<HomeState>{
  HomeCubit():super(HomeInitialState());



  void addTaskState(){
    emit(AddTaskState());
  }
}