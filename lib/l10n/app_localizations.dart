import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';

// ignore: unused_import
import 'package:flutter/foundation.dart' show SynchronousFuture;

abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  final String localeName;

  static const List<String> supportedLocales = ['en', 'ru'];

  String get title;
  String get enterUrl;
  String get enterToken;
  String get join;
  String get leave;
  String get settings;
  String get chat;
  String get participants;
  String get audio;
  String get video;
  String get screenShare;
  String get disconnect;
  String get reconnect;
  String get cameraOn;
  String get cameraOff;
  String get microphoneOn;
  String get microphoneOff;
  String get microphone;
  String get camera;
  String get yourUrlHere;
  String get yourTokenHere;

  static Future<AppLocalizations> load(Locale locale) {
    switch (locale.languageCode) {
      case 'ru':
        return SynchronousFuture<AppLocalizations>(AppLocalizationsRu());
      case 'en':
      default:
        return SynchronousFuture<AppLocalizations>(AppLocalizationsEn());
    }
  }
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return AppLocalizations.supportedLocales.contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
