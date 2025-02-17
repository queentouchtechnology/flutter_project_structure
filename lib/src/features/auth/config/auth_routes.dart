// lib/src/config/routes.dart

import 'package:flutter/material.dart';
import 'package:flutter_project_structure/src/features/auth/config/auth_routes.dart';
import 'package:flutter_project_structure/src/features/auth/presentation/views/index.dart';
import 'package:flutter_project_structure/src/features/profile/config/profile_routes.dart';

// lib/src/features/authentication/config/auth_routes.dart

class AuthRoutes {
  static const String login = '/login';
  static const String register = '/register';

  static Map<String, WidgetBuilder> get routes {
    return {
      login: (context) => LoginScreen(),
      register: (context) => RegisterScreen(),
    };
  }
}
