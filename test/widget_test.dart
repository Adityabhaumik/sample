// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:sample/main.dart';
import 'package:sample/screens/details_screen/ui_elements/associated_partner_tile.dart';
import 'package:sample/screens/details_screen/ui_elements/brand_details_tile.dart';
import 'package:sample/screens/details_screen/ui_elements/documents_tile.dart';
import 'package:sample/screens/payment_screen/ui_elements/purchasing_tile.dart';
import 'package:sample/screens/payment_screen/ui_elements/total_return_value.dart';

void main() {
  testWidgets('BrandDetailsTile widget test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: BrandDetailsTile(
          investIn: 'Investment In',
          investBy: 'Investment By',
          investInBio: 'Investment In Bio',
        ),
      ),
    ));
    expect(find.text('Investment In'), findsOneWidget);
    expect(find.text('Investment By'), findsOneWidget);
    expect(find.text('Investment In Bio'), findsOneWidget);
    expect(find.byIcon(Icons.arrow_back), findsOneWidget);

  });
  testWidgets('PurchasingTile widget test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: PurchasingTile(
          purchasingFrom: 'Company A',
          purchasedBy: 'John Doe',
        ),
      ),
    ));
    expect(find.text('Purchasing'), findsOneWidget);
    expect(find.text('Company A'), findsOneWidget);
    expect(find.text('John Doe'), findsOneWidget);
  });

  test('buildReturnAmountList function test', () {
    String inputValue = '50,000';
    List resultList = buildReturnAmountList(inputValue);
    print(resultList);
    expect(resultList.isNotEmpty, true);
    expect(resultList.length, 6);
  });
}
