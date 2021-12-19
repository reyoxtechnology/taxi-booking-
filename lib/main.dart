import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mycab_user/constance/global.dart' as globals;
import 'Language/appLocalizations.dart';
import 'constance/constance.dart' as constance;
import 'constance/routes.dart';
import 'constance/themes.dart';
import 'modules/home/home_screen.dart';
import 'modules/splash/SplashScreen.dart';
import 'modules/splash/introductionScreen.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) => runApp(const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static changeTheme(BuildContext context) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state!.changeTheme();
  }

  static setCustomeLanguage(BuildContext context, String? languageCode) {
    final _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state!.setLanguage(languageCode!);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Key key = UniqueKey();

  void changeTheme() {
    setState(() {
      globals.isLight = !globals.isLight;
    });
  }

  String locale = "en";
  setLanguage(String languageCode) {
    setState(() {
      locale = languageCode;
      constance.locale = languageCode;
    });
  }

  @override
  Widget build(BuildContext context) {
    constance.locale = locale;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: globals.isLight ? Brightness.dark : Brightness.light,
      statusBarBrightness: Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: CoustomTheme.getThemeData().cardColor,
      systemNavigationBarDividerColor: CoustomTheme.getThemeData().disabledColor,
      systemNavigationBarIconBrightness: globals.isLight ? Brightness.dark : Brightness.light,
    ));
    return Container(
      key: key,
      color: CoustomTheme.getThemeData().backgroundColor,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              CoustomTheme.getThemeData().backgroundColor,
              CoustomTheme.getThemeData().backgroundColor,
              CoustomTheme.getThemeData().backgroundColor.withOpacity(0.8),
              CoustomTheme.getThemeData().backgroundColor.withOpacity(0.7)
            ],
          ),
        ),
        child: GetMaterialApp(
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en'), // English
            Locale('fr'), // French
            Locale('ar'), // Arabic
          ],
          debugShowCheckedModeBanner: false,
          title: AppLocalizations.of('My Cab'),
          routes: routes,
          theme: CoustomTheme.getThemeData(),
          builder: (BuildContext context, Widget? child) {
            return Directionality(
              textDirection: TextDirection.ltr,
              child: Builder(
                builder: (BuildContext context) {
                  return MediaQuery(
                    data: MediaQuery.of(context).copyWith(
                      textScaleFactor: 1.0,
                    ),
                    child: child!,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }

  var routes = <String, WidgetBuilder>{
    Routes.SPLASH: (BuildContext context) => const SplashScreen(),
    Routes.INTRODUCTION: (BuildContext context) => const IntroductionScreen(),
    Routes.HOME: (BuildContext context) => const HomeScreen(),
  };
}
