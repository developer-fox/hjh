import 'package:company_app/core/constants/enums/locale_keys_enum.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LocaleManager{

  static LocaleManager? _instance =  LocaleManager._init();
  static LocaleManager get instance{
    _instance ??= LocaleManager._init();
    return _instance!;
  }

  SharedPreferences? _sharedPreferences;

  LocaleManager._init(){
    SharedPreferences.getInstance().then((value) => _sharedPreferences = value);
  }


  static preferencesInit() async{
    instance._sharedPreferences ??= await SharedPreferences.getInstance();
    return;
  }


  Future<void> setStringValue(PreferencesKeys key, String value) async {
    await _sharedPreferences?.setString(key.toString(), value);
  }

  String getStringValue(PreferencesKeys key) =>
    _sharedPreferences?.getString(key.toString()) ?? "";

  Future<void> setIntValue(PreferencesKeys key, int value) async {
    await _sharedPreferences?.setInt(key.toString(), value);
  }

  int getIntValue(PreferencesKeys key) =>
    _sharedPreferences?.getInt(key.toString()) ?? 0;


}
