import 'package:flutter/material.dart';
import '../models/trip.dart';
import '../widgets/app_drawer.dart';
import '../Screens/categories_screens.dart';
import '../screens/favorit_screen.dart';


class TabsScreen extends StatefulWidget {
  final List<Trip>myfavoirt;
   TabsScreen(this.myfavoirt,);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  void _selectScreen(int index) {
    setState(() {
      _pageIndex=index;
    });
  }

   List<String> title=["تصنيف الرحلات","المفضلة",];

  int _pageIndex=0;
  @override
  Widget build(BuildContext context) {
    List<Widget> pages=[
      CategoriesScreens(),
      FavoritScreen(widget.myfavoirt),
    ];

    return Scaffold(
      drawer:const AppDrawer(),
      appBar: AppBar(
        title:  Text(title[_pageIndex]),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body:pages[_pageIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        onTap:_selectScreen ,
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
        unselectedItemColor:Colors.black,
        currentIndex: _pageIndex,
        items: const [
          BottomNavigationBarItem(
              icon:Icon(Icons.dashboard),
            label: "التصنيفات"
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.star),
              label: "المفضلة "
          ),
        ],
      ),
    );
  }
}
