import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/general_profile_screen/general_profile_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String generalProfileScreen = '/general_profile_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    generalProfileScreen: (context) => GeneralProfileScreen(),
    initialRoute: (context) => GeneralProfileScreen()
  };
}
