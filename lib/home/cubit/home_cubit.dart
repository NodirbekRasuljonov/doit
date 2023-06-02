import 'package:bloc/bloc.dart';
import 'package:doit/home/state/home_state.dart';
import 'package:hive/hive.dart';

class HomeCubit extends Cubit<HomeState>{
  HomeCubit():super(HomeInitialState());
  Box hBox=Hive.box("testBox");
  


  
}