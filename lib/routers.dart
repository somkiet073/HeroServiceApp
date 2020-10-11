import 'package:flutter/material.dart';
import 'package:heroService/screens/dashboard/dashboard_screen.dart';
import 'package:heroService/screens/lockscreen/lock_screen.dart';
import 'package:heroService/screens/welcome/welcome_screen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/lockscreen": (BuildContext context) => LockScreen(),
  "/welcome": (BuildContext context) => WelcomeScreen(),
  "/dashboard": (BuildContext context) => DashboardScreen(),
};
