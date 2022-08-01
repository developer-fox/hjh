
import 'package:company_app/core/init/navigation/navigation_route.dart';
import 'package:company_app/core/init/theme/app_theme.dart';
import 'package:company_app/view/architecture_testing/test_main.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';
import 'package:company_app/core/constants/app/app_constants.dart';
import 'package:company_app/core/init/navigation/navigation_service.dart';
import 'core/init/language/language_manager.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

 runApp(
    EasyLocalization(
      supportedLocales: LanguageManager.instance.supportedLocales,
      fallbackLocale:  LanguageManager.instance.enLocale,
      path: ApplicationConstants.instance.LANG_ASSET_PATH,
      child: const MyApp())
    );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      title: 'Flutter Demo',
      theme: AppThemeLight.instance.theme,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      onGenerateRoute: NavigationRoute.instance.generateRoute,
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
    return MainView();
  }
}
