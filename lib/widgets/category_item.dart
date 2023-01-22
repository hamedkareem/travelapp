import 'package:flutter/material.dart';
import '../screens/category_trip_screens.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUi;
   const CategoryItem(this.id,this.title, this.imageUi, {super.key});
    void selectCategory(BuildContext cont) {
      Navigator.of(cont).pushNamed(
          CategoryTripScreen.ScreenRoute,
        arguments: {
            "id":id,
          "title":title,
        }
      );
    }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=>selectCategory(context) ,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              imageUi,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding:const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black.withOpacity(0.5),
            ),
            child:  Text(
                title,
            style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ],
      ),
    );
  }
}
