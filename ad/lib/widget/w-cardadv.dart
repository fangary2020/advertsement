import 'package:ad/views/main/main_doctor.dart';
import 'package:ad/views/main/main_teachers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetAdvCard extends StatelessWidget {
  final String title;
  final String id;
  final String image;
  final String icon;
  final Color color;
  const WidgetAdvCard({
    super.key,
    required this.id,
    required this.title,
    required this.image,
    required this.color,
    required this.icon,
  });
  selectAdv(BuildContext ctx) {
    if (id == '1') {
      Navigator.push(
        ctx,
        MaterialPageRoute(
          builder: (context) => const MainDoctor(),
        ),
      );
    }else if(id=='2'){
      Navigator.push(
        ctx,
        MaterialPageRoute(
          builder: (context) => const MainTeacher(),
        ),
      );

  }
}

  

  @override
  Widget build(BuildContext context) {
//  onTap:() => selectDrass(context)

//  if (controllerAdvertisement: advertisements[index]==0){

//}
    return GestureDetector(
      onTap: () => selectAdv(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: GoogleFonts.cairo(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
