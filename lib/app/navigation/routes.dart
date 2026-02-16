// ignore_for_file: public_member_api_docs

import 'package:fork_cast/app/navigation/navigation.dart';

/// {@template routes}
/// A collection of static string constants representing
/// the application's route paths.
///
/// These constants are used by [AppRouter] to define the navigation tree.
/// They also will be shown in the Url bar on web.
/// {@endtemplate}
abstract class Routes {
  // static const String coffee = '/coffee';
  static const String preferences = '/preferences';
  static const String recipes = '/recipes';
  static const String favorites = '/favorites';
  // static const String recipeSuggestions = '/recipe-suggestions';
  static const String recipeDetail = '/recipe-detail';
  static const String devTools = '/dev-tools';
}
