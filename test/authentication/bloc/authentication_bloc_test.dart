// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_login/authentication/bloc/bloc.dart';

void main() {
  group('AuthenticationBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          AuthenticationBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final authenticationBloc = AuthenticationBloc();
      expect(authenticationBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<AuthenticationBloc, AuthenticationState>(
      'CustomAuthenticationEvent emits nothing',
      build: AuthenticationBloc.new,
      act: (bloc) => bloc.add(const CustomAuthenticationEvent()),
      expect: () => <AuthenticationState>[],
    );
  });
}
