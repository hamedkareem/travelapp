import 'package:flutter/material.dart';
import '../app_data.dart';
import '../screens/book_trip.dart';
class DetailsTripScreen extends StatelessWidget {
  static const ScreenRoute="tripDetail";

  Widget SectionTitle(BuildContext context, String titleText){
   return Container(
     margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
     alignment: Alignment.topRight,
     child: Text(titleText,style: Theme.of(context).textTheme.headline5,
     ),
   );
  }
  final Function mangerFavorit;
  final Function isFaviort;
  const DetailsTripScreen(this.mangerFavorit,this.isFaviort,{super.key});

  Widget ListVivewConteiner(Widget child) => Container(
        decoration: BoxDecoration(
        color: Colors.blueGrey,
        border: Border.all(color: Colors.grey),
    borderRadius:BorderRadius.circular(10),
    ),
    margin: const EdgeInsets.symmetric(horizontal: 15),
    padding:const EdgeInsets.all(10),
    height: 200,
     child:child,
    );
  Widget myListVivew(Widget child){
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        border: Border.all(color: Colors.grey),
        borderRadius:BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding:const EdgeInsets.all(10),
      height: 70,
      width: double.infinity,
      child:child,
    );
  }
  @override
  Widget build(BuildContext context) {
    final tripId=ModalRoute.of(context)?.settings.arguments;
    final selectedTrip=Trips_data.firstWhere((trip) => trip.id==tripId);
    return Scaffold(
      appBar: AppBar(
        title:Text(selectedTrip.title),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(selectedTrip.imageUrl,
                fit:BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10,),
            SectionTitle(context, "الأنشطة :"),
            ListVivewConteiner(
               ListView.builder(
                itemCount:selectedTrip.activities.length ,
                itemBuilder: (context,index)=>Card(
                  elevation: 0.3,
                  child: Padding(
                    padding:const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                      child: Text(selectedTrip.activities[index]),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            SectionTitle(context, "البرنامج اليومي :"),
            ListVivewConteiner(
              ListView.builder(
                itemBuilder:(context,index)=>Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Center(
                            child: Text(" يوم${index+1}",)
                        ),
                      ),
                      title: Text(selectedTrip.program[index]),
                    ),
                    const Divider(),
                  ],
                ) ,
              itemCount: selectedTrip.program.length,)
            ),
            SectionTitle(context, "وجهة الرحلة :"),
            myListVivew(
                  Card(
                    elevation: 0.3,
                    child: Padding(
                      padding:const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                      child: Text(selectedTrip.subTitle),
                    ),
                  ),
            ),
            const SizedBox(height:50),
                InkWell(
                  child: Container(
                  alignment: FractionalOffset.bottomCenter,
                  height: 70,
                  width: double.infinity,
                  color: Colors.blueGrey,
                    child:  Center(
                      child: Text("أحجز الأن ",
                      style:Theme.of(context).textTheme.headline6,),
                  ),
                ),
                  onTap: (){
                    Navigator.of(context).pushReplacementNamed(BookTrip.ScreenRoute);
                  },
                ),
          ],
    ),
      ),

      
      floatingActionButton: FloatingActionButton(
        splashColor:Colors.white,
        backgroundColor:Colors.black,
        shape: BeveledRectangleBorder(borderRadius:BorderRadius.circular(10)),
        onPressed:()=>mangerFavorit(tripId),

        child: Icon(
            isFaviort(tripId)? Icons.star:Icons.star_border
        ),
      ),
    );
  }
}