import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/track_listing_screen.dart';
import 'screens/track_details_screen.dart';

class AppRoutes {
  static const String login = '/login';
  static const String home = '/home';
  static const String programs = '/track';
  static const String programDetails = '/track-details';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case programs:
        return MaterialPageRoute(builder: (_) => const TrackListingScreen());
      case programDetails:
        final args = settings.arguments as Map<String, dynamic>?;
        return MaterialPageRoute(
          builder: (_) => TrackDetailsScreen(
            programName: args?['name'] ?? 'Untitled Program',
            description: args?['description'] ?? 'No description',
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Page not found')),
          ),
        );
    }
  }
}