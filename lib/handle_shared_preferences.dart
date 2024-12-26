import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static late SharedPreferences sharedPrefs;

  static Future<void> decrement() async {
    int rqm = sharedPrefs.getInt('problems')!;
    await sharedPrefs.setInt('problems', rqm - 1);
  }

  static Future<void> increment() async {
    int rqm = sharedPrefs.getInt('problems')!;
    await sharedPrefs.setInt('problems', rqm + 1);
  }

  static Future<void> initSharedPreferences() async {
    sharedPrefs = await SharedPreferences.getInstance();
    if (sharedPrefs.getInt('problems') == null) {
      await sharedPrefs.setInt('problems', 1295);
    }
  }
}
