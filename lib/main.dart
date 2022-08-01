import 'package:company_app/core/extension/context_extension.dart';
import 'package:company_app/core/init/theme/app_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';
import 'package:company_app/core/constants/app/app_constants.dart';
import 'package:company_app/core/init/navigation/navigation_service.dart';
import 'core/init/language/language_manager.dart';

void main() {
 runApp(
    EasyLocalization(
      supportedLocales: LanguageManager.instance.supportedLocales,
      fallbackLocale:  LanguageManager.instance.enLocale,
      path: ApplicationConstants.instance.FONT_FAMILY,
      child: const MyApp())
    );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppThemeLight.instance.theme,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      navigatorKey: NavigationService.instance.navigatorKey,
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  INetworkManager example = NetworkManager(
    options: BaseOptions(
      baseUrl: "http:localhost:4000",
    ),
  );

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
             Text(
              'You have pushed the button this many times:',
            ),
            
          ],
        ),
      ),
    );
  }
}
