
import 'package:doit/view/home/pages/home_page.dart';
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
    }
  }
}
