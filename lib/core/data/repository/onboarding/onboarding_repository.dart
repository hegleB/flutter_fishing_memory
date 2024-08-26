import 'package:shared_preferences/shared_preferences.dart';

abstract class OnboardingRepository {
  Future<String?> readOnboarding(String key);
  Future<void> writeOnboarding(String key, String value);
}

class OnboardingRepositoryImpl implements OnboardingRepository {
  final SharedPreferences sharedPreferences;

  OnboardingRepositoryImpl(this.sharedPreferences);

  @override
  Future<String?> readOnboarding(String key) async {
    try {
      return sharedPreferences.getString(key);
    } catch (e) {
      print("Error reading from SharedPreferences: $e");
      return null;
    }
  }

  @override
  Future<void> writeOnboarding(String key, String value) async {
    try {
      await sharedPreferences.setString(key, value);
    } catch (e) {
      print("Error writing to SharedPreferences: $e");
    }
  }
}