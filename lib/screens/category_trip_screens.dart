import 'package:flutter/material.dart';
import 'package:travel_app/models/trip.dart';
import '../widgets/trip_items.dart';
import '../app_data.dart';
class CategoryTripScreen extends StatefulWidget {
  static const ScreenRoute="category trip";
 final List<Trip> Atrip;
 const CategoryTripScreen(this.Atrip, {super.key});
  @override
  State<CategoryTripScreen> createState() => _CategoryTripScreenState();
}
@override
class _CategoryTripScreenState extends State<CategoryTripScreen> {
  @override
  Widget build(BuildContext context) {
    final routeAgrement =ModalRoute.of(context)?.settings.arguments as Map<String,String>;
    final categoryId= routeAgrement["id"];
    final categoryTitle = routeAgrement["title"];
    final filterTrip=(widget.Atrip.where((trip){
      return trip.categories.contains(categoryId);
    }).toList());
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,

      ),
      body: ListView.builder(
          itemBuilder: (context,index){
            return TripItems(
              id: filterTrip[index].id,
              title: filterTrip[index].title,
                imageUrl:filterTrip[index].imageUrl,
                durtation: filterTrip[index].duration,
                tripType: filterTrip[index].tripType,
             // season: filterTrip[index].season,
              location:filterTrip[index].location,
              price: filterTrip[index].price,
            );
          },
        itemCount:filterTrip.length ,
      ),

      //floatingActionButton: FloatingActionButton(
       // splashColor:Colors.white,
       // backgroundColor:Colors.black,
       // shape: BeveledRectangleBorder(borderRadius:BorderRadius.circular(10)),
      //  onPressed: (){
          //Navigator.of(context).pop(tripId);
        //},
       // child: const Icon(Icons.question_answer),
     // ),

    );
  }
}