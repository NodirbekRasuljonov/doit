import 'package:doit/core/constants/color_const.dart';
import 'package:doit/home/cubit/home_cubit.dart';
import 'package:doit/home/state/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kBackgroundColor,
      appBar: appBar(),
      body: body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/addTask');
        },
        child: Icon(
          Icons.add,
          color: ColorConst.kTextColor,
        ),
      ),
    );
  }

  BlocConsumer<HomeCubit, HomeState> body() {
    return BlocConsumer<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeInitialState) {
          return Container(
            height: 100.0,
            width: 100.0,
            color: Colors.amber,
          );
        } else {
          return Text("Errror");
        }
      },
      listener: (context, state) {
        
      },
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        "DoiT",
        style: TextStyle(
          fontSize: 20,
          color: ColorConst.kTextColor,
          fontWeight: FontWeight.w700,
        ),
      ),
      elevation: 0.0,
      backgroundColor: ColorConst.kTransparentColor,
      centerTitle: true,
    );
  }
}
