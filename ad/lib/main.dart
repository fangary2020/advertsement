

import 'package:ad/constant/app_name.dart';
import 'package:ad/views/home/view_home.dart';
import 'package:flutter/material.dart';
import 'package:tbib_splash_screen/splash_screen_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: AppName.name,
      debugShowCheckedModeBanner: false,
      //      localizationsDelegates: [
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      //       supportedLocales: [
      //    Locale('ar', 'AE'), // English, no country code
      // ],
      home:  MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});
  
  @override
  State<MyHomePage> createState()=> _MyHomePageState();
   
}
class _MyHomePageState extends State<MyHomePage>{
 bool isLoaded = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5)).then((value) => setState(() {
          isLoaded = true;
        }));
  }
  
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateWhere: isLoaded,
      navigateRoute: const ViewHome(), backgroundColor: Colors.white,
      linearGradient: const LinearGradient(
          colors: [
            Color(0xFF3366FF),
            Color(0xFF00CCFF),
          ],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp),
          
      text: WavyAnimatedText(
        "advertisements",
        textStyle: const TextStyle(
          color: Colors.red,
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    // imageSrc: "assets/logo_light_lottie.json",
      imageSrc: "assets/images/ad.png",
       displayLoading: true,
    );
  }
}