
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
import 'package:flutter_create_vscode/screens/saved_points_page.dart';
import 'package:flutter_create_vscode/screens/settings_page.dart';
import 'package:flutter_create_vscode/screens/shows_page.dart';
import 'package:flutter_create_vscode/screens/trips_page.dart';
import 'package:flutter_create_vscode/screens/user_profile/user_profile_details.dart';

class AppWidget extends StatelessWidget{
  const AppWidget({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey),
        initialRoute: '/',
        routes: {
          '/': (context) => LoginScreen(),
          '/home_screen': (context) => HomeScreen(),
          '/beach_screen': (context) => BeachScreen(),
          '/hotel_screen': (context) => HotelScreen(),
          '/dinners_screen': (context) => DinnersScreen(),
          '/pharma_screen': (context) => PharmaScreen(),
          '/banks_screen': (context) => BanksScreen(),
          '/shows_screen': (context) => ShowsScreen(),
          '/cinemas_screen': (context) => CinemasScreen(),
          '/trips_screen': (context) => TripsScreen(),
          '/beach_details_screen': (context) => BeachDetails(),
          '/user_details_screen': (context) => User_profile(),
          '/saved_points_screen': (context) => Saved_Points_Screen(),
          '/settings_screen': (context) => Settings_Screen(),
        },
    );
  }
}