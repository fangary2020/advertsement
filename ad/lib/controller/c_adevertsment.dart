import 'package:ad/constant/app_name.dart';
import 'package:ad/module/categoryadv.dart';

import 'package:flutter/material.dart';
class Controller{

List <ControllerAdvertisement>advertisements = [
  ControllerAdvertisement (
    id: '1',
    title:'الاطباء',
    image:AppName.image1,
    icon:'Icon(Icons.arrow_forward_rounded)' ,
    color:const Color.fromARGB(255, 208, 222, 225),
  ),
    ControllerAdvertisement(
    id: '2',
    title: 'دروس خصوصية',
    image:AppName.image2,
    icon:'' ,
    color:const Color.fromARGB(255, 241, 242, 244),
  ),
   ControllerAdvertisement(
    id: '3',
    title: 'محال تجارية',
    image: AppName.image6,
    icon:'' ,
    color:const Color.fromARGB(255, 199, 233, 199),
  ),
    ControllerAdvertisement(
    id: '4',
    title: 'عمال',
    image: AppName.image4,
    icon:'' ,
    color: const Color.fromARGB(255, 247, 241, 199),
  ),
   ControllerAdvertisement(
    id: '5',
    title: 'محامون',
    image: AppName.image3,
    icon:'' ,
    color: const Color.fromARGB(255, 238, 223, 200),
  ),
   ControllerAdvertisement(
    id: '6',
    title: 'صيدليات',
   image: AppName.image8,
    icon:'' ,
    color:const Color.fromARGB(255, 243, 233, 245),
  ),
    ControllerAdvertisement(
    id: '7',
    title: 'محفظون قران',
   image: AppName.image10,
    icon:'' ,
    color: const Color.fromARGB(255, 203, 230, 199),
  ),
    ControllerAdvertisement(
    id: '8',
    title: 'مطاعم',
   image: AppName.image9,
    icon:'' ,
    color: const Color.fromARGB(255, 233, 226, 205),
  ),
   ControllerAdvertisement(
    id: '9',
    title: 'مستشفيات',
   image: AppName.image11,
    icon:'' ,
    color:const Color.fromARGB(255, 208, 243, 194),
  ),
   ControllerAdvertisement(
    id: '10',
    title: 'مختبرات',
   image: AppName.image7,
    icon:'' ,
    color:const Color.fromARGB(255, 233, 226, 205),
  ),
];
/// [getLength] return number item in list
  int getLength() => advertisements.length;

  /// [getArticle] return dataArticle by index
  ControllerAdvertisement getAdv(int index) => advertisements.elementAt(index);

}