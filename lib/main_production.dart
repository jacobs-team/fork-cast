import 'package:fork_cast/app/app.dart';
import 'package:fork_cast/app/core/dependencies/dependencies.dart';
import 'package:fork_cast/bootstrap.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  await bootstrap(() async {
    await configureDependencies(Environment.prod);
    return const CoffeeApp();
  });
}
