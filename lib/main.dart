
import 'package:awesome_drawing_quiz/app_theme.dart';
import 'package:awesome_drawing_quiz/game_route.dart';
import 'package:awesome_drawing_quiz/home_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));

  runApp(
    MaterialApp(
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const HomeRoute(),
        '/game': (BuildContext context) => const GameRoute()
      },
      theme: ThemeData(
        primaryColor: AppTheme.primary,
        primaryColorDark: AppTheme.primaryDark,
        textTheme: GoogleFonts.acmeTextTheme().copyWith(
            labelLarge: GoogleFonts.ubuntuMono(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        buttonTheme: ButtonThemeData(
          buttonColor: AppTheme.accent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          textTheme: ButtonTextTheme.primary,
        ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppTheme.accent),
      ),
    ),
  );
}
