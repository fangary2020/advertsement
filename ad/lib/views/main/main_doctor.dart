import 'package:ad/controller/c_details_doctors.dart';
import 'package:ad/views/details/details_screen_doctors.dart';
import 'package:ad/widget/w_appbar.dart';
import 'package:ad/widget/w_categorylist.dart';
import 'package:flutter/material.dart';


class MainDoctor extends StatelessWidget {
  const MainDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  const WidgetAppbar(namebar: 'اعلانات الاطباء'),
       body: Column(
         children: [
        const CategoryList(),
        

           Expanded(
            flex:4,
             child: GridView(
              padding: const EdgeInsets.all(2),
              children: doctors.map(
                (catData) => DetailsDoctor (
                    catData.id, catData.name,catData.image, catData.address, catData.specialty,catData.telphone,catData.timeworks),
              ).toList(),
              gridDelegate:const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 420,
                childAspectRatio: 3 /2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
            
           ),
           ),
      
      //   FilledButton(
      //    style: ElevatedButton.styleFrom(
      //      shape:const StadiumBorder(),
      //      padding:const  EdgeInsets.only(left: 30, right: 30),
      //      backgroundColor: Color.fromARGB(255, 18, 37, 144),
       
      //      // minimumSize: Size(100, 20),
      //    ),
      //    onPressed: () {
      //      // AssetController.pause();
      //      // Navigator.push(
      //      //   context,
      //      //   MaterialPageRoute(
      //      //     builder: (context) => DroosMehwer3(),
      //      //   ),
      //      // );
      //    },
      //    child:  Text(
      //      'عودة الى الرئيسية',
      //      style: GoogleFonts.cairo(fontSize: 25,color: Colors.white),
      //   textAlign: TextAlign.center,
      //    ),
      //  ),
          FloatingActionButton.extended(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 91, 107, 214),
        icon: const Icon(Icons.home_max_outlined),
        label: Text('عودة الى الرئيسية'),
        onPressed: () {
          // Navigator.of(context).push(MaterialPageRoute(
          //   builder: (context) => NewMessagePage(),
          // ));
        },
      ),
         ],
         
         
       ),
    );
  }
}