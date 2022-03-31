
import 'package:electrical_store1/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Electrical store',
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.black,
        textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),

      ),
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [Locale("ar","AE")],
      locale: const Locale("ar","AE"),
      home: const HomeScreen(),
    );
  }
}