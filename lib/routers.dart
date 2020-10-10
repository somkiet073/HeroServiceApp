import 'package:flutter/material.dart';
import 'package:heroService/screens/dashboard/dashboard_screen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/dashboard": (BuildContext context) => DashboardScreen(),
};
