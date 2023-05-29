import 'package:doit/home/pages/add_task.dart';
import 'package:doit/home/pages/home_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  Route? onenerateRoute(RouteSettings s) {
    switch (s.name) {
      case "/home":
        return MaterialPageRoute(
          builder: (context) {
            return HomePage();
          },
        );
      case "/addTask":
        return MaterialPageRoute(
          builder: (context) {
            return const AddTaskPage();
          },
        );
    }
  }
}
