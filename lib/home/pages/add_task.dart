import 'package:doit/core/constants/color_const.dart';
import 'package:doit/home/cubit/home_cubit.dart';
import 'package:doit/home/state/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    String value = 'later';
    return Scaffold(
      backgroundColor: ColorConst.kBackgroundColor,
      appBar: appBar(),
      body: BlocConsumer<HomeCubit, HomeState>(
        builder: (context, state) {
          return Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                textFormField(
                    controller: context.read<HomeCubit>().taskController),
                space(),
                DropdownButtonFormField(
                  value: value,
                  items: const [
                    DropdownMenuItem(
                      value: "later",
                      child: Text("Later"),
                    ),
                    DropdownMenuItem(
                      value: "important",
                      child: Text("Important"),
                    ),
                    DropdownMenuItem(
                      value: "urgent",
                      child: Text("Urgent"),
                    )
                  ],
                  onChanged: (v) {
                    value = v.toString();
                    print(value);
                  },
                ),
                space(),
                ElevatedButton(
                  onPressed: () {
                    if (BlocProvider.of<HomeCubit>(context).taskController.text.isNotEmpty) {
                      context.read<HomeCubit>().writeToHive(urgent: value);
                    } else {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Task is not provided"),
                              content: Text("Shgdhasasd"),
                              actions: [
                                TextButton(onPressed: () {
                                  Navigator.pop(context);
                                }, child: Text("OK"))
                              ],
                            );
                          });
                    }
                  },
                  child: const Text("Add"),
                )
              ],
            ),
          );
        },
        listener: (context, state) {},
      ),
    );
  }

  TextFormField textFormField({required TextEditingController controller}) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(color: ColorConst.kTextColor)),
      ),
    );
  }

  SizedBox space() => const SizedBox(
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
