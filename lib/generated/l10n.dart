import 'package:flutter/material.dart';
import 'package:inspector/generated/intl/messages_all.dart';
import 'package:intl/intl.dart';

class AppString {
  AppString();

  static AppString? _current;

  static AppString get current {
    assert(_current != null, 'No instance of AppString was loaded. Try to initialize the AppString delegate before accessing AppString.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppString> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppString();
      AppString._current = instance;

      return instance;
    });
  }

  static AppString of(BuildContext context) {
    final instance = AppString.maybeOf(context);
    assert(instance != null, 'No instance of AppString present in the widget tree. Did you add AppString.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppString? maybeOf(BuildContext context) {
    return Localizations.of<AppString>(context, AppString);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppString> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppString> load(Locale locale) => AppString.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
