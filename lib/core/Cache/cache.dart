import 'package:hive/hive.dart';

class HiveCashe {
  static setTheme(dynamic key, dynamic value) async {
    var box = await Hive.openBox('myBofx');
    await box.put(key, value); // Set a string value into the box
  }

  static dynamic GetTheme(String key) async {
    var box = await Hive.openBox('myBofx');
    return await box.get(key, defaultValue: true);
  }
}
