
import 'package:flutter/material.dart';
import 'package:flutter_create_vscode/screens/banks_page.dart';
import 'package:flutter_create_vscode/screens/beach_page.dart';
import 'package:flutter_create_vscode/screens/cinemas_page.dart';
import 'package:flutter_create_vscode/screens/details_screens/beach_details.dart';
import 'package:flutter_create_vscode/screens/dinners_page.dart';
import 'package:flutter_create_vscode/home_page.dart';
import 'package:flutter_create_vscode/screens/hotel_page.dart';
import 'package:flutter_create_vscode/login_page.dart';
import 'package:flutter_create_vscode/screens/pharma_page.dart';
import 'package:flutter_create_vscode/screens/shows_page.dart';
import 'package:flutter_create_vscode/screens/trips_page.dart';

class AppWidget extends StatelessWidget{
  const AppWidget({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey),
        initialRoute: '/',
        routes: {
          '/': (context) => LoginPage(),
          '/home': (context) => HomePage(),
          '/beach_page': (context) => BeachPage(),
          '/hotel_page': (context) => HotelPage(),
          '/dinners_page': (context) => DinnersPage(),
          '/pharma_page': (context) => PharmaPage(),
          '/banks_page': (context) => BanksPage(),
          '/shows_page': (context) => ShowsPage(),
          '/cinemas_page': (context) => CinemasPage(),
          '/trips_page': (context) => TripsPage(),
          '/beach_details': (context) => BeachDetails(),
        },
    );
  }
}