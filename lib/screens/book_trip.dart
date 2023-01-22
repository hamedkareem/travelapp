import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


  class BookTrip extends StatefulWidget {
  static const ScreenRoute="bookTrip";

  const BookTrip({super.key});


  @override
  State<BookTrip> createState() => _BookTripState();
  }

  class _BookTripState extends State<BookTrip> {
  TextEditingController phoneNumber=TextEditingController();
  TextEditingController number=TextEditingController();
  String result="";

  @override
  Widget build(BuildContext context) {

  return Scaffold(
    appBar: AppBar(
      title: Text("حجز الرحلة",style: Theme.of(context).textTheme.headline6,),
     centerTitle: true,
     backgroundColor: Colors.blueGrey,
   ),
   body: SingleChildScrollView(
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
            prefixIcon: const Icon(Icons.drive_file_rename_outline_sharp,color: Colors.black,),

            suffixIcon: const Icon(Icons.drive_file_rename_outline,color: Colors.black,),
            labelText: "الأسم الثلاثي",

          ),
          keyboardType: TextInputType.text,
          maxLines: 1,
          maxLength: 30,
          controller:phoneNumber ,

        ),
         const SizedBox(height: 20),
         TextField(
          decoration:InputDecoration(
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          ),
          hintText: "  أدخل رقم هاتفك",
          counterText: "",
            prefixIcon: const Icon(Icons.drive_file_rename_outline,color: Colors.black,),
            suffixIcon: const Icon(Icons.drive_file_rename_outline_sharp,color: Colors.black,),
           prefixText: "+964",
          labelText: "الرجاء عدم كتاية الصفر الذي يبدأ بيه رقم هاتفك",

         ),
             keyboardType: TextInputType.number,
          maxLength: 10,
           inputFormatters: [FilteringTextInputFormatter.digitsOnly],
           controller:phoneNumber ,

          ),
        const SizedBox(height: 20),
         TextField(
           decoration:InputDecoration(
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
             ),
            hintText: "آدخل عدد المسافرين",
             labelText: "عدد المسافرين",
            counterText: "",
               prefixIcon: const Icon(Icons.person,color: Colors.black,),
               suffixIcon: const Icon(Icons.airline_seat_recline_normal_outlined,color: Colors.black,)

        ),
          keyboardType: TextInputType.number,
         maxLength: 2,
         inputFormatters: [FilteringTextInputFormatter.digitsOnly],
         controller: number,
         ),
         const SizedBox(height: 60),
         ElevatedButton(onPressed: ()
             {
            },
             style: ElevatedButton.styleFrom(
           primary: Colors.blueGrey,
           textStyle:Theme.of(context).textTheme.headline6,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
         ),
          child: const Text("اتمام الحجز",),


         ),
         const SizedBox(height: 40),
         const Text("سوف يظهر لك هنا المبلغ الذي يستوجب عليك دفعة ",
           style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold,color: Colors.red),
         ),
         Container(
             height: 250,
             width: double.infinity,
            decoration: BoxDecoration(
             color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(15),
              ),
                child:Text(result) ,
  ),
  ],
  ),
  ),
  ),
  );
  }

}

