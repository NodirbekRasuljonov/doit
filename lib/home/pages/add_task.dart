import 'package:doit/core/constants/color_const.dart';
import 'package:doit/home/cubit/home_cubit.dart';
import 'package:doit/home/state/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kBackgroundColor,
      appBar: appBar(),
      body: BlocConsumer<HomeCubit, HomeState>(
        builder: (context, state) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(),
                space(),
                TextFormField(),
                space(),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Add"),
                )
              ],
            ),
          );
        },
        listener: (context, state) {},
      ),
    );
  }

  SizedBox space() => SizedBox(
        height: 20.0,
      );

  AppBar appBar() {
    return AppBar(
      title: Text(
        "Add Task",
        style: TextStyle(color: ColorConst.kTextColor, fontSize: 20.0),
      ),
      elevation: 0.0,
      centerTitle: true,
      backgroundColor: ColorConst.kTransparentColor,
      iconTheme: IconThemeData(color: ColorConst.kTextColor),
    );
  }
}
