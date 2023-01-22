import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:travel_app/Screens/categories_screens.dart';
import '../screens/book_trip.dart';
import '../screens/problem_screen.dart';
import '../app_data.dart';
import 'models/trip.dart';
import 'screens/filter.dart';
import '../screens/tabs_screen.dart';
import '../screens/deatils_trip_screen.dart';
import '../screens/category_trip_screens.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String,bool> _filter={
    "dhoik":false,
    "erbil":false,
     "short":false,
      "large":false,};
 List<Trip> Atrip=Trips_data;
 List<Trip> favoritTrip=[];

  void _changeFilter(Map<String,bool>filterData){
    setState(() {
      _filter=filterData;
      Atrip=Trips_data.where((trip) {
        if(_filter["dhoik"]== true
            && trip.isInDhoik !=true){
          return false;
        }
        if(_filter["erbil"]== true
            && trip.isInIrbil !=true){
          return false;
        }
        if(_filter["short"]== true
            && trip.isShort !=true){
          return false;
        }
        if(_filter["large"]== true
            && trip.isLarge !=true){
          return false;
        }
        return true;
      }).toList();
    });
  }
  void mangerFavorit(String tripId){
    final existrip =favoritTrip.indexWhere((trip) => trip.id==tripId);
    if(existrip>=0) {
      setState(() {
        favoritTrip.removeAt(existrip);
      });
    }
      else{
        setState(() {
          favoritTrip.add(Trips_data.firstWhere((trip) => trip.id==tripId),
          );
        });
    }
    }
    bool isFavoirt(String id){
    return favoritTrip.any((trip) => trip.id==id);
    }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar','AE'), // English, no country code
      ],
      title: 'Travel App',
      theme: ThemeData(
        fontFamily:"Cairo",
        textTheme: ThemeData.light().textTheme.copyWith(
          headline5: const TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: "Cairo",
          ),
          headline6: const TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
            fontFamily: "Cairo",
          ),

        ), colorScheme: ColorScheme.fromSwatch(accentColor: Colors.black).copyWith(secondary: Colors.amber),
      ),
     // home: CategoriesScreens(),
      initialRoute: "/",
      routes: {
        "/":(context)=> TabsScreen(favoritTrip),
        CategoryTripScreen.ScreenRoute:(context)=> CategoryTripScreen(Atrip),
        DetailsTripScreen.ScreenRoute:(context)=> DetailsTripScreen(mangerFavorit,isFavoirt),
        Filter.ScreenRoute:(context)=> Filter(_filter,_changeFilter),
        BookTrip.ScreenRoute:(context)=> BookTrip(),
        //MyTrips.ScreenRoute:(context)=>MyTrips(),
        ProblemScreen.ScreenRoute:(context)=>ProblemScreen(),
      },
    );
  }
}


