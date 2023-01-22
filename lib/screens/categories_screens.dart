import 'package:flutter/material.dart';
import 'package:travel_app/screens/problem_screen.dart';
import 'package:travel_app/widgets/category_item.dart';
import 'package:travel_app/app_data.dart';

class CategoriesScreens extends StatelessWidget {
  static const ScreenRoute="categoies";
  @override
  Widget build(BuildContext context){
    return Scaffold(
     body:  GridView(
    padding:const EdgeInsets.all(10),
    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
    maxCrossAxisExtent: 200,
    childAspectRatio: 7/8,
    mainAxisSpacing: 10,
    crossAxisSpacing: 10,
    ),
    children:Categories_data.map((categoryData)=>
    CategoryItem(
    categoryData.id,
    categoryData.title,
    categoryData.imageUrl,
    ),
    ).toList(),
    ),
      floatingActionButton: FloatingActionButton(
        splashColor:Colors.white,
        backgroundColor:Colors.black,
        shape: BeveledRectangleBorder(borderRadius:BorderRadius.circular(10)),
        onPressed: (){
          Navigator.of(context).pushReplacementNamed(ProblemScreen.ScreenRoute);
        },
        child: const Icon(Icons.question_answer),
      ),
    );

  }
}