
import 'package:flutter/material.dart';


class AppThemeLight{

  static AppThemeLight? _instance =  AppThemeLight._init();
  static AppThemeLight get instance {
    _instance ??= AppThemeLight._init();
    return _instance!;
  }

  AppThemeLight._init();

  ThemeData get theme => ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Colors.black,
      onPrimary: Colors.black, 
      secondary: Colors.black, 
      onSecondary: Colors.black,
      error: Colors.black, 
      onError: Colors.black, 
      background: Colors.black, 
      onBackground: Colors.black, 
      surface: Colors.black, onSurface: Colors.black)
  );



}

