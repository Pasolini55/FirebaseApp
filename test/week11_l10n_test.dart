import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firebaseapp/l10n/app_localizations.dart';

void main() {
  test('Semana 11: idioma ingles', () async {
    final strings = await AppLocalizations.delegate.load(const Locale('en'));
    expect(strings.notes, 'Notes');
  });

  test('Semana 11: idioma portugues', () async {
    final strings = await AppLocalizations.delegate.load(const Locale('pt'));
    expect(strings.notes, 'Anotações');
  });

  test('Semana 11: idiomas suportados', () {
    expect(AppLocalizations.supportedLocales, contains(const Locale('en')));
    expect(AppLocalizations.supportedLocales, contains(const Locale('pt')));
  });
}
