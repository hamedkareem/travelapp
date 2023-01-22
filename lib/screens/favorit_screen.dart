import 'package:flutter/material.dart';

import '../models/trip.dart';
import '../widgets/trip_items.dart';

class FavoritScreen extends StatelessWidget {
final List<Trip> myfavoirt;
   FavoritScreen(this.myfavoirt);

  @override
  Widget build(BuildContext context) {
    if (myfavoirt.isEmpty){
      return const Center(
        child: Text("ليس لديك رحلة مفضلة"),
      );
    }
    else{
      return ListView.builder(
        itemBuilder: (context,index){
          return TripItems(
            id: myfavoirt[index].id,
            title: myfavoirt[index].title,
            imageUrl:myfavoirt[index].imageUrl,
            durtation: myfavoirt[index].duration,
            tripType: myfavoirt[index].tripType,
           // season: myfavoirt[index].season,
            location:myfavoirt[index].location,
            price: myfavoirt[index].price,
          );
        },
        itemCount:myfavoirt.length ,
      );
    }
  }
}
