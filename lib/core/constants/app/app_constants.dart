

class ApplicationConstants{

  static ApplicationConstants? _instance = ApplicationConstants._init();

  static ApplicationConstants get instance{
    _instance ??= ApplicationConstants._init();
    return _instance!;
  }


  ApplicationConstants._init();

  String FONT_FAMILY = "POPPINS";
  String LANG_ASSET_PATH = "asset/language";
  String EMAIL_REGEX = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}\$';

}

