
import 'package:doit/core/routes/app_routes.dart';
import 'package:doit/view/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          return HomeCubit();
        })
      ],
      child:const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppRoutes routes = AppRoutes();
    return MaterialApp(
      title: 'DoiT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      onGenerateRoute: routes.onenerateRoute,
      initialRoute: '/home',
    );
  }
}
