import 'package:flutter/material.dart';
import 'package:islami_app/home/home_screen.dart';
import 'package:islami_app/quran_details/quran_details_screen.dart';

void main() {
  runApp( IslamiApp());
}

class IslamiApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routname,
      theme: ThemeData(
        cardTheme: CardTheme(
          margin: EdgeInsets.all(16),
          color: Colors.white,
          elevation: 20,
        ),
        dividerTheme: DividerThemeData(
          color:Color(0xffB7935F) ,
          thickness: 3,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(

          backgroundColor: Color(0xffB7935F),

          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
            primary:Color(0xffB7935F),
          onPrimary: Colors.white,
          secondary: Color(0xffB7935F).withOpacity(0.57),
          onSecondary: Colors.black,
        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          )
        ),
        scaffoldBackgroundColor: Colors.transparent,

      ),


      routes:{
        HomeScreen.routname:(_)=>HomeScreen(),
        QuranDetailsScreen.routeName:(_)=>QuranDetailsScreen(),
      },
    );
  }
}