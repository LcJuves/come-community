// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get searchBarHintTextShort => 'Enter the search here';

  @override
  String get searchBarHintTextLong =>
      'Please enter some information here for search';

  @override
  String get visibilityTempTipTitle => ' Hello';

  @override
  String get visibilityTempTipMessage => ' What\'s wrong with you?';
}
