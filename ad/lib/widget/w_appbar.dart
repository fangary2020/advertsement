import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class WidgetAppbar extends StatelessWidget implements PreferredSizeWidget {
  
  const WidgetAppbar({super.key,required this.namebar});
final String namebar;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        namebar,
        style: GoogleFonts.robotoCondensed(fontSize: 35,color: Colors.white),
        textAlign: TextAlign.center,
     
      ),
     iconTheme: const IconThemeData(size: 35, color: Colors.white),
           centerTitle: true,
           elevation: 20,
            leading: IconButton(
          icon:const Icon(Icons.arrow_back_ios_sharp),
          color: Colors.white,
          iconSize: 30,
          onPressed: () => Navigator.pop(context),
              ),
         
      backgroundColor:const Color.fromARGB(255, 44, 60, 181),
      actions:  [ 
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Badge(
            label: Text('20'),
            padding: EdgeInsets.all(2),
            largeSize: 20,
            child: Icon(
              CupertinoIcons.bell_solid,
              size: 35,
           ),
          ),
         
        ),
         IconButton(onPressed:(){},icon:const Icon(Icons.search)),
      ],
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}