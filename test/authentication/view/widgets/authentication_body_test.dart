// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_login/authentication/authentication.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthenticationBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => AuthenticationBloc(),
          child: MaterialApp(home: AuthenticationBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
