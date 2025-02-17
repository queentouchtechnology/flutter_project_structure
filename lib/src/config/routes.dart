// lib/src/config/routes.dart

import 'package:flutter/material.dart';
import 'package:flutter_project_structure/src/features/auth/config/auth_routes.dart';
import 'package:flutter_project_structure/src/features/profile/config/profile_routes.dart';

class AppRoutes {
  static const String initialRoute = AuthRoutes.login; // Default route
  static const String profile = ProfileRoutes.profile; // Profile route
  static const String register = AuthRoutes.register; // Register  route

  static Map<String, WidgetBuilder> get routes {
    return {
      ...AuthRoutes.routes, // Authentication routes
      ...ProfileRoutes.routes, // Profile routes
      // Add other feature routes here
    };
  }
}
