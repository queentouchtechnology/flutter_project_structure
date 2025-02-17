import 'package:flutter/material.dart';
import 'package:flutter_project_structure/src/features/profile/presentation/views/index.dart';

// lib/src/features/profile/config/profile_routes.dart

class ProfileRoutes {
  static const String profile = '/profile';

  static Map<String, WidgetBuilder> get routes {
    return {
      profile: (context) => ProfileScreen(),
    };
  }
}
