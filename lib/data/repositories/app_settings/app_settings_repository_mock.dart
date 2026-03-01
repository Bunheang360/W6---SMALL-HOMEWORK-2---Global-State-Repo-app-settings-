import '../../../model/settings/app_settings.dart';
import './app_settings_repository.dart';

class AppSettingsRepositoryMock implements AppSettingsRepository {
  AppSettings? _settings;

  @override
  Future<AppSettings> load() async {
    return _settings ?? AppSettings(themeColor: ThemeColor.blue);
  }

  @override
  Future<void> save(AppSettings settings) async {
    _settings = settings;
  }
}