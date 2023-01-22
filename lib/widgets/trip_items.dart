import 'package:flutter/material.dart';
import 'package:travel_app/screens/book_trip.dart';
import '../models/trip.dart';
import '../screens/deatils_trip_screen.dart';
class TripItems extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int durtation;
  final TripType tripType;
  //final Season season;
  final LocaTion location;
  final int price;
  const TripItems({super.key,
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.durtation,
    required this.tripType,
   // required this.season,
    required this.location,
    required this.price,
  });
 // String get seasonText{
   // if(season==Season.Winter){
  //    return"شتاء";
   // }
   // if(season==Season.Summer){
    //  return"صيف";
   // }
   // if(season==Season.Autumn){
     // return"خريف";
  // }
   // if(season==Season.Winter){
// return"ربيع";
  //}
  // else{
//    return"غير معرف";
// }
  //}

  String get tripTypeText{
    if(tripType==TripType.Exploration){
      return"اكتشافية";
    }
    if(tripType==TripType.Tourism){
      return"سياحية";
    }
    else{
      return"غير معرف";
    }
  }

  String get locationText{
    if(location==LocaTion.AlAnbar){
      return"الأنبار";
    }
    if(location==LocaTion.Babil){
      return"بابل";
    }
    if(location==LocaTion.Baghdad){
      return"بغداد";
    }
    if(location==LocaTion.Basra){
      return"بصرة";
    }
    if(location==LocaTion.DhiQar){
      return"ذي قار";
    }
    if(location==LocaTion.AlQadisiyyah){
      return"القادسية";
    }
    if(location==LocaTion.Diyala){
      return"ديالى";
    }
    if(location==LocaTion.Dihok){
      return"دهوك";
    }
    if(location==LocaTion.Erbil){
      return"أربيل";
    }
    if(location==LocaTion.Halabja){
      return"حلبجة";
    }
    if(location==LocaTion.Karbala){
      return"كربلاء";
    }
    if(location==LocaTion.Kirkuk){
      return"كركوك";
    }
    if(location==LocaTion.Maysan){
      return"ميسان";
    }
    if(location==LocaTion.Muthanna){
      return"مثنى";
    }
    if(location==LocaTion.Najaf){
      return"نجف";
    }
    if(location==LocaTion.Ninawa){
      return"نينوى";
    }
    if(location==LocaTion.Sulaymaniyah){
      return"سليمانية";
    }
    if(location==LocaTion.SalahAlDin){
      return"صلاح الدين";
    }
    if(location==LocaTion.Wasit){
      return"واسط";
    }

    else{
      return"غير معرف";
    }
  }

  void selectTrip(BuildContext context){
    Navigator.of(context).pushNamed(DetailsTripScreen.ScreenRoute,arguments:id);
  }
  void myPrice(BuildContext context){
    Navigator.of(context).pushNamed(BookTrip.ScreenRoute,arguments:id);
  }
@override
Widget build(BuildContext context){
  return InkWell(
    onTap:()=>selectTrip(context) ,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 7,
      margin:const EdgeInsets.all(10),
      child: Column(
        children: [
          Stack(
            children:  [
              ClipRRect(
                child:Image.network(
                  imageUrl,
                height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ) ,
               // borderRadius: const BorderRadius.only(topRight: 15,topLeft: 15),
              ),
              Container(
                padding:const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0),
                      Colors.black.withOpacity(0.8),
                    ],
                    stops: const [0.3,1],
                  ),
                ),
                height: 250,
                alignment: Alignment.bottomRight,
                child: Text(title,style: Theme.of(context).textTheme.headline6,
                overflow: TextOverflow.fade,
                ),
              ),
            ],
          ),
          Padding(
              padding:const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.today,
                      color:Theme.of(context).colorScheme.secondary,),
                  const  SizedBox(
                      width: 5,
                    ),
                    Text("$durtation أيام ")
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.monetization_on,
                      color:Theme.of(context).colorScheme.secondary,),
                  const  SizedBox(
                      width: 5,
                    ),
                    Text("$price الف د.ع  "),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.family_restroom,
                      color:Theme.of(context).colorScheme.secondary,),
                  const  SizedBox(
                      width: 5,
                    ),
                    Text(tripTypeText),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.location_on,
                      color:Theme.of(context).colorScheme.secondary,),
                    const  SizedBox(
                      width: 5,
                    ),
                    Text(locationText),
                  ],
                ),
              ],

            ),
          ),
        ],
      ),
    ),

  );
}
}