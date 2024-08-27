import 'package:shared_preferences/shared_preferences.dart';

abstract class PermissionRepository {
  Future<String?> readPermission(String key);
  Future<void> writePermission(String key, String value);
}

class PermissionRepositoryImpl implements PermissionRepository {
  final SharedPreferences sharedPreferences;

  PermissionRepositoryImpl(this.sharedPreferences);

  @override
  Future<String?> readPermission(String key) async {
     try {
      return sharedPreferences.getString(key);
    } catch (e) {
      print("Error reading from SharedPreferences: $e");
      return null;
    }
  }

  @override
  Future<void> writePermission(String key, String value) async {
    try {
      await sharedPreferences.setString(key, value);
    } catch (e) {
      print("Error writing to SharedPreferences: $e");
    }
  }
}