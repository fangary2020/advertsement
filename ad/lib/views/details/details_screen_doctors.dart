import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsDoctor extends StatelessWidget {
  final String id;
  final String name;
  final String image;
  final String address;
  final String specialty;
  final String telphone;
  final String timeworks;

  const DetailsDoctor(
  
    this.id,
    this.name,
    this.image,
    this.address,
    this.specialty,
    this.telphone,
    this.timeworks,
  );
//final ControllerDoctor doctor;
//final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    //final Size size = MediaQuery.of(context).size;
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(
          height: height * 0.02,
        ),
        Expanded(
          child: SizedBox(
            height: 300,
            child: Stack(
              children: [
                Positioned(
                  top: 15,
                  left: 20,
                  child: Material(
                    child: Container(
                      height: 230.0,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.indigo,
                    width: 2,
                  ),
                        //color: const Color.fromARGB(255, 197, 213, 232),

                        
                        gradient: const LinearGradient(colors: [
                          Colors.white,
                          Color.fromARGB(255, 211, 223, 226),
                        ], begin: Alignment.topLeft, end: Alignment.topRight),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(-2.0, 5.0),
                            color:const Color.fromARGB(255, 105, 105, 103)
                                .withOpacity(0.5),
                            blurRadius: 15.0,
                            spreadRadius: 15.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 35,
                  child: Card(
                    elevation: 30,
                    shadowColor: Colors.grey.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      height: 140,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/omar22.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 35,
                  left: 140,
                  child: SizedBox(
                    height: 250,
                    width: 220,
                    child: ListView(
                     // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                        ),
                        const Divider(color: Colors.indigo),
                        Text(
                          specialty,
                           style: GoogleFonts.robotoCondensed(
                            fontSize: 16,
                            color:const Color.fromARGB(255, 203, 42, 30),

                          ),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                          maxLines: 2,
                            overflow: TextOverflow.clip,
                        ),
                        Text(
                         address,
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 14,
                            color:Colors.indigo,

                          ),
                          maxLines: 3,
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                           // overflow: TextOverflow.clip,
                        ),
                         Text(
                         timeworks,
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 14,
                            color:Colors.indigo,

                          ),
                          textAlign: TextAlign.justify,
                          textDirection: TextDirection.rtl,
                          maxLines: 3,
                            overflow: TextOverflow.clip,
                        ),
                      const  SizedBox(height: 5,),
                    const Divider(color: Colors.indigo),
                         Text(
                         telphone,
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 14,
                            color:Colors.indigo,

                          ),
                          textAlign: TextAlign.justify,
                          textDirection: TextDirection.rtl,
                          maxLines: 2,
                            overflow: TextOverflow.clip,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        //  const SizedBox(
        //     height: 10,
        //   )
      ],
    );
  }
}
