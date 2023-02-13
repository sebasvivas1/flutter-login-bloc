// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_login/authentication/bloc/bloc.dart';

void main() {
  group('AuthenticationEvent', () {  
    group('CustomAuthenticationEvent', () {
      test('supports value equality', () {
        expect(
          CustomAuthenticationEvent(),
          equals(const CustomAuthenticationEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomAuthenticationEvent(),
          isNotNull
        );
      });
    });
  });
}
