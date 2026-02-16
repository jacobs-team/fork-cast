import 'package:fork_cast/app/app.dart';
import 'package:fork_cast/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const CoffeeApp());
}
