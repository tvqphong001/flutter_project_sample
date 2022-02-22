import 'package:shared_preferences/shared_preferences.dart';

const _TOKEN_KEY = 'token';

class StorageService {
  const StorageService();
}

extension StorageServiceExtension on StorageService {
  Future<void> saveToken(String token) async {
    await (await _getPrefs).setString(_TOKEN_KEY,token);
  }

  Future<void> deleteToken() async {
    await (await _getPrefs).remove(_TOKEN_KEY);
  }

  Future<SharedPreferences> get _getPrefs async{
    return await SharedPreferences.getInstance();
  }

  Future<String> get getToken async{
    return (await _getPrefs).getString(_TOKEN_KEY) ?? '';
  }
}