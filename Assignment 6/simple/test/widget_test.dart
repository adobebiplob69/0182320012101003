import 'package:flutter_test/flutter_test.dart';
import 'package:simple_container_ui/main.dart';

void main() {
  testWidgets('HomePage UI loads correctly', (WidgetTester tester) async {
    // Load the app
    await tester.pumpWidget(const MyApp());

    // Check if main items appear on screen
    expect(find.text("Alex Rahman"), findsOneWidget);
    expect(find.text("Flutter Developer"), findsOneWidget);

    // Check info items
    expect(find.text("Today"), findsOneWidget);
    expect(find.text("2 Meetings"), findsOneWidget);

    expect(find.text("Completed"), findsOneWidget);
    expect(find.text("8 Tasks"), findsOneWidget);

    expect(find.text("Goals"), findsOneWidget);
    expect(find.text("3 Targets"), findsOneWidget);

    // Check buttons
    expect(find.text("Create"), findsOneWidget);
    expect(find.text("Schedule"), findsOneWidget);
  });

  testWidgets('Button taps show SnackBar', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Tap Create button
    await tester.tap(find.text("Create"));
    await tester.pump(); // show snackbar
    expect(find.text("Create Pressed"), findsOneWidget);

    // Tap Schedule button
    await tester.tap(find.text("Schedule"));
    await tester.pump();
    expect(find.text("Schedule Pressed"), findsOneWidget);
  });
}
