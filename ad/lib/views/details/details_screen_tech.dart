import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailTech extends StatelessWidget {
  final String id;
  final String name;
  final String image;
  final String address;
  final String specialty;
  final String stage;
  final String facebook;
  final String telphone;
  DetailTech({
    super.key,
    required this.id,
    required this.name,
    required this.address,
    required this.facebook,
    required this.image,
    required this.specialty,
    required this.stage,
    required this.telphone,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Expanded(
            child: SizedBox(
              height: 240,
              child: Stack(
                children: [
                  Positioned(
                    // top: 15,
                    // left: 20,
                    child: Material(
                      child: Card(
                        elevation: 50,
                        child: Expanded(
                          child: Container(
                            height: 250.0,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.indigo,
                                width: 2,
                              ),
                              //color: const Color.fromARGB(255, 197, 213, 232),

                             gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 248, 244, 244).withOpacity(0),
                        Color.fromARGB(255, 140, 242, 242).withOpacity(0.8),
                      ],
                      stops: [0.6, 1],
                    ),
                              // boxShadow: [
                              //   BoxShadow(
                              //     offset: const Offset(-2.0, 3.0),
                              //     color:
                              //         const Color.fromARGB(255, 105, 105, 103)
                              //             .withOpacity(0.5),
                              //     blurRadius: 10.0,
                              //     spreadRadius: 10.0,
                              //   ),
                              // ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Card(
                      elevation: 50,
                      shadowColor: const Color.fromARGB(255, 120, 115, 115).withOpacity(0.5),
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
                    top: 20,
                    left: 130,
                    child: SizedBox(
                      height: 230,
                      width: 230,
                      child: Expanded(
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  specialty,
                                  style: GoogleFonts.robotoCondensed(
                                    fontSize: 16,
                                    color: const Color.fromARGB(255, 203, 42, 30),
                                  ),
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.rtl,
                                  maxLines: 2,
                                  overflow: TextOverflow.clip,
                                ),
                                SizedBox(height: 10,),
                                Text(
                                      'مادة التخصص:',
                                      style: GoogleFonts.robotoCondensed(
                                        fontSize: 16,
                                        color: const Color.fromARGB(255, 0, 0, 0),
                                      ),
                                      textAlign: TextAlign.justify,
                                      textDirection: TextDirection.rtl,
                                      maxLines: 2,
                                      overflow: TextOverflow.clip,
                                      // color: Theme.of(context).accentColor,
                                    ),
                              ],
                            ),
                            Text(
                              address,
                              style: GoogleFonts.robotoCondensed(
                                fontSize: 14,
                                color: Colors.indigo,
                              ),
                              maxLines: 3,
                              textAlign: TextAlign.right,
                              textDirection: TextDirection.rtl,
                              overflow: TextOverflow.clip,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                 Text(
                                  facebook,
                                  style: GoogleFonts.robotoCondensed(
                                    fontSize: 14,
                                    color: Colors.indigo,
                                  ),
                                  textAlign: TextAlign.justify,
                                  textDirection: TextDirection.rtl,
                                  maxLines: 3,
                                  overflow: TextOverflow.clip,
                                ),
                                 SizedBox(
                                  width:10,
                                ),
                                Text(
                                      'فيس بوك للمدرس ',
                                      style: GoogleFonts.robotoCondensed(
                                        fontSize: 10,
                                        color: const Color.fromARGB(255, 0, 0, 0),
                                      ),
                                      textAlign: TextAlign.justify,
                                      textDirection: TextDirection.rtl,
                                      maxLines: 2,
                                      overflow: TextOverflow.clip,
                                      // color: Theme.of(context).accentColor,
                                    ),
                                    
                               
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                             Row(
                              //crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                               children: [
                                 Text(
                                      'المرحلة',
                                      style: GoogleFonts.robotoCondensed(
                                        fontSize: 10,
                                        color: const Color.fromARGB(255, 0, 0, 0),
                                      ),
                                      textAlign: TextAlign.justify,
                                      textDirection: TextDirection.rtl,
                                      maxLines: 2,
                                      overflow: TextOverflow.clip,
                                      // color: Theme.of(context).accentColor,
                                    ),
                                     SizedBox(
                                  width:10,
                                ),
                                     Text(
                                  stage,
                                  style: GoogleFonts.robotoCondensed(
                                    fontSize: 10,
                                    color: Colors.indigo,
                                  ),
                                  textAlign: TextAlign.justify,
                                  textDirection: TextDirection.rtl,
                                  // maxLines: 2,
                                  overflow: TextOverflow.clip,
                                ),
                               ],
                             ),
                            
                               
                               
                            SizedBox(height: 20),
                            const Divider(color: Colors.indigo),
                            Row(
                              children: [
                                Icon(
                                  Icons.phone_android,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  telphone,
                                  style: GoogleFonts.robotoCondensed(
                                    fontSize: 12,
                                    color: Colors.indigo,
                                  ),
                                  textAlign: TextAlign.justify,
                                  textDirection: TextDirection.rtl,
                                  maxLines: 2,
                                  overflow: TextOverflow.clip,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                               
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
