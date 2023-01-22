import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
class Filter extends StatefulWidget {
  static const ScreenRoute = "filter";
  final Function saveFilter;
  final Map<String,bool>currentfilter;
   Filter(this.currentfilter, this.saveFilter);
  @override
  State<Filter> createState() => _FilterState();
}
SwitchListTile buildSwitchListTile(
    String title,String subtitle,bool currentValue,
    void Function(bool) onChange,) {
  return SwitchListTile(
    title: Text(title),
    subtitle: Text(subtitle),
    value:currentValue,
    onChanged:onChange);
}
class _FilterState extends State<Filter> {
  var InErbil = false;
  var InDhoik = false;
  var InShort=false;
  var InLarge=false;

  @override
  initState() {
    InErbil = widget.currentfilter["erbil"]!;
    InDhoik = widget.currentfilter["dhoik"]!;
    InShort = widget.currentfilter["short"]!;
    InLarge = widget.currentfilter["large"]!;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("التصفية"),
        actions: [
          IconButton(
              onPressed:(){
                final selectfilter={
                  "erbil":InErbil,
                  "dhoik":InDhoik,
                  "short":InShort,
                  "large":InLarge,
                };
                widget.saveFilter(selectfilter);
                },
              icon: const Icon(Icons.save))
        ],
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      drawer: const AppDrawer(),
      body: Column(
        children: [
          const SizedBox(height: 30,),
          Expanded(
            child: ListView(
              children: [
                buildSwitchListTile(
                "رحلات قصيرة", "أظهار الرحلات التي مدتها من يوم الى خمسة أيام",
                InShort,
                    (newValue)=>setState(()
                {InShort=newValue;}),
              ),
                buildSwitchListTile(
                "رحلات طويلة ", "أظهار الرحلات التي مدتها تتجاوز الخمسة أيام ",
                InLarge,
                    (newValue)=>setState(()
                {InLarge=newValue;}),
              ),

                buildSwitchListTile(
                  " رحلات أربيل ", "أظهار رحلات الى محافظة أربيل فقظ",
              InErbil,
                    (newValue)=>setState(()
                    {InErbil=newValue;}
                    ),
            ),
                buildSwitchListTile(
                    "رحلات دهوك ", "أظهار رحلات محافظة دهوك فقط ",
                    InDhoik,
                        (newValue)=>setState(()
                    {InDhoik=newValue;}),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
