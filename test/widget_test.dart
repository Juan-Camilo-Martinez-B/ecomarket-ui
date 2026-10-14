import 'package:flutter_test/flutter_test.dart';
import 'package:ecomarket_ui/main.dart';
import 'package:ecomarket_ui/widgets/stripe_payment_button.dart';

void main() {
  testWidgets('StripePaymentButton renders test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the StripePaymentButton is rendered.
    expect(find.byType(StripePaymentButton), findsOneWidget);
  });
}
