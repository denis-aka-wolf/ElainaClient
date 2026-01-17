// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get title => 'Клиент Elaina';

  @override
  String get enterUrl => 'Введите URL';

  @override
  String get enterToken => 'Введите токен';

  @override
  String get join => 'Присоединиться';

  @override
  String get leave => 'Покинуть';

  @override
  String get settings => 'Настройки';

  @override
  String get chat => 'Чат';

  @override
  String get participants => 'Участники';

  @override
  String get audio => 'Аудио';

  @override
  String get video => 'Видео';

  @override
  String get screenShare => 'Демонстрация экрана';

  @override
  String get disconnect => 'Отключиться';

  @override
  String get reconnect => 'Переподключиться';

  @override
  String get cameraOn => 'Камера вкл';

  @override
  String get cameraOff => 'Камера выкл';

  @override
  String get microphoneOn => 'Микрофон вкл';

  @override
  String get microphoneOff => 'Микрофон выкл';
}
