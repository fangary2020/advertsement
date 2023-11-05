

import 'package:ad/controller/c_adevertsment.dart';
import 'package:ad/widget/w-cardadv.dart';
import 'package:ad/widget/w_appbar.dart';
import 'package:ad/widget/w_categorylist.dart';


import 'package:flutter/material.dart';








class ViewHome extends StatefulWidget {
  const ViewHome({super.key});

  @override
  State<ViewHome> createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> {

  @override
 Widget build(BuildContext context) {
  return Scaffold(
   appBar:  WidgetAppbar(namebar: 'اعلانات مبوبة',),
    body:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CategoryList(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder( 
                scrollDirection: Axis.vertical,
               itemCount: Controller().getLength(),
                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                          childAspectRatio: 0.75,
               ),
               itemBuilder: (context, index) =>  WidgetAdvCard(
                   // data: ControllerMusem().getMusem(index),
                    //controllerAdvertisement: advertisements[index],
                            

                 id: Controller().getAdv(index).id,
               title:Controller().getAdv(index).title,
                 image: Controller().getAdv(index).image,
              color: Controller().getAdv(index).color,
                icon: Controller().getAdv(index).icon,
                //    ),
             // ),
           ),
                ),
              ),
            ),
         
        ],
      ),
    );
  }
}