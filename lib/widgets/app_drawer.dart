import 'package:flutter/material.dart';
import '../screens/filter.dart';

class AppDrawer extends StatelessWidget {
   const AppDrawer({Key? key}) : super(key: key);
  ListTile buildListTile(String title,IconData icon, Function()? onTabLink){
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: Colors.amber,
      ),
      title: Text(title,
          style: const TextStyle(
              fontFamily: "Cairo",
              fontWeight: FontWeight.bold,
              fontSize: 24)
      ),
       onTap: onTabLink,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 35),
            alignment: Alignment.center,
            color: Colors.blueGrey,
            child: Text(
              "دليلك السياحي",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          const SizedBox(
            height: 18,
          ),
         buildListTile("الرحلات",Icons.card_travel,(){
           Navigator.of(context).pushReplacementNamed("/");
         },
    ),
          buildListTile("التصفية",Icons.filter_list,(){
            Navigator.of(context).pushReplacementNamed(Filter.ScreenRoute);
          },
          ),
        ],
      ),
    );
  }
}
