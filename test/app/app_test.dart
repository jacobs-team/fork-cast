import 'package:flutter_test/flutter_test.dart';
import 'package:fork_cast/app/app.dart';
import 'package:mocktail/mocktail.dart';

import '../helpers/helpers.dart';

void main() {
  group(CoffeeApp, () {
    late final DevToolsCubit devToolsCubit;

    setUp(() {
      initHydratedStorage();
      devToolsCubit = MockDevToolsCubit();
      when(() => devToolsCubit.state).thenReturn(const DevToolsState());
    });

    // testWidgets('renders $CoffeeApp', (tester) async {
    //   await tester.pumpPumpPumpItUP(
    //     deps: [devToolsCubit],
    //     const CoffeeApp(),
    //   );
    //   expect(find.byType(CoffeeApp), findsOneWidget);
    // });
  });
}
