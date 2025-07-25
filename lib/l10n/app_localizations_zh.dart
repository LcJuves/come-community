// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get searchBarHintTextShort => '在此处输入搜索';

  @override
  String get searchBarHintTextLong => '在此处输入一些信息以进行搜索';

  @override
  String get visibilityTempTipTitle => ' 您好';

  @override
  String get visibilityTempTipMessage => ' 您怎么了？';
}
