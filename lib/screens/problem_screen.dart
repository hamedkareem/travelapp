import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app/screens/tabs_screen.dart';

import 'categories_screens.dart';

class ProblemScreen extends StatefulWidget {
  static const ScreenRoute="problem";

  const ProblemScreen({super.key});

  @override
  State<ProblemScreen> createState() => _ProblemScreenState();
}

class _ProblemScreenState extends State<ProblemScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("أستفسار"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        leading: IconButton( icon:const Icon(Icons.arrow_back) ,
          onPressed: () {
            Navigator.of(context).popAndPushNamed("/");
          },
        ),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
          child: Column(
            children:  [
              const SizedBox(height: 20),
              TextField(
                decoration:InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "  أدخل الأسم الثلاثي",
                  counterText: "",
                  prefixIcon: const Icon(Icons.drive_file_rename_outline,color: Colors.black,),

                  suffixIcon: const Icon(Icons.drive_file_rename_outline_sharp,color: Colors.black,),
                  labelText: "الأسم الثلاثي",

                ),
                keyboardType: TextInputType.text,
                maxLines: 1,
                maxLength: 30,

              ),
              const SizedBox(height: 20),
              TextField(
                decoration:InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "  أدخل رقم هاتفك",
                  counterText: "",
                  prefixIcon: const Icon(Icons.phone_android,color: Colors.black,),
                  prefixText: "+964",
                  suffixIcon: const Icon(Icons.phone,color: Colors.black,),
                  labelText: "الرجاء عدم كتاية الصفر الذي يبدأ بيه رقم هاتفك",

                ),
                keyboardType: TextInputType.number,
                maxLength: 10,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],

              ),
              const SizedBox(height: 20),
              TextField(
                decoration:InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: "ادخل معرف التلكرام او الواتساب",

                    counterText: "",
                    prefixIcon: const Icon(Icons.whatsapp,color: Colors.black,),
                    suffixIcon: const Icon(Icons.telegram_rounded,color: Colors.black,)
                ),
                maxLines: 1,
                maxLength: 20,
              ),
              const SizedBox(height: 25),
              Container(
                padding:const EdgeInsets.only(top: 10,left: 20),
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const SingleChildScrollView(
                  child: TextField(
                    decoration:InputDecoration(
                      border: InputBorder.none,
                      hintText: " اكتب استفسارك او مشكلة توجهها ",
                      hintStyle: TextStyle(color: Colors.black45),
                      counterText: "",
                      prefixIcon: Icon(Icons.text_snippet_outlined,color: Colors.black,),
                    ),
                    keyboardType: TextInputType.text,style: TextStyle(color: Colors.white,fontSize: 18),
                    maxLines: null,
                  ),
                ) ,
              ),
              const SizedBox(height: 20),
              ElevatedButton(onPressed: ()
              {
              },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                  textStyle:Theme.of(context).textTheme.headline6,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                child: const Text("اتمام الطلب",),


              ),
             
            ],
          ),
        ),
      ),
    );

  }
}
