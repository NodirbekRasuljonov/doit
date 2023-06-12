import 'package:bloc/bloc.dart';
import 'package:doit/hive/task_info.dart';
import 'package:doit/home/state/home_state.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HomeCubit extends Cubit<HomeState>{
  HomeCubit():super(HomeInitialState());
  Box hBox=Hive.box("testBox");
  int id=0;

  TextEditingController taskController=TextEditingController();
  
  void  writeToHive({required String urgent,}){
    hBox.put(id, Task(task: taskController.text, urgent: urgent));
    taskController.clear();
    id++;
  }



  
}