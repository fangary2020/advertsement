
class ControllerDoctor {
 final String id;
  final String name;
  final String image;
  final String address;
  final String specialty;
  final String timeworks;
  final String telphone;
  
  const ControllerDoctor({
    required this.id,
    required this.name,
    required this.image,
    required this.address,
   required this.specialty,
   required this.telphone,
   required this.timeworks,
  });
}
List <ControllerDoctor>doctors = [
 const ControllerDoctor (
    id: '1',
    name:'سعيد عثمان سعيد',
    image:'assets/images/omar22.jpg',
    address:'قنا - قوص - شارع طريق النصر',
    specialty: 'دكتوراة النساء من جامعة القاهرة-دكتور نساء و توليد',
    telphone: '01125220555-01258555855',
    timeworks: 'من 9 صباحا - حتى 1 ظهرا و من بعد الساعة 7 مساءا حت 12 مساء',
  ),
   const ControllerDoctor (
    id: '2',
    name:'عمر ابو الوفا الحداد',
    image:'assets/images/omar22.jpg',
    address:'قنا - قوص - بجوار مدرسة البهاء زهير  ',
    specialty: 'دكتوراة النساء من جامعة اسيوط-دكتور نساء و توليد',
    telphone: '01125220555-01258555855',
    timeworks: 'من 9 صباحا - حتى 1 ظهرا و من بعد الساعة 7 مساءا حت 12 مساء',
  ),
 const ControllerDoctor (
    id: '3',
    name:'وائل حسن العدوى',
    image:'assets/images/omar22.jpg',
    address:'قنا - قوص - بجوار صيدلية القذافى  ',
    specialty: 'دكتوراة جراحة الاورام-دكتور جراحة عامة ',
    telphone: '01125220555-01258555855',
    timeworks: 'من 9 صباحا - حتى 1 ظهرا و من بعد الساعة 7 مساءا حت 12 مساء',
  ),
 const ControllerDoctor (
    id: '4',
    name:'حسين باهى تميرك',
    image:'assets/images/omar22.jpg',
    address:'قنا - قوص - اعلى صيدلية القذافى ',
    specialty: 'دكتوراة النفسية و العصبية  من جامعة اسيوط-- ماجستير فى جراحة المخ و الاعصاب ',
    telphone: '01125220555-01258555855',
    timeworks: 'من 9 صباحا - حتى 1 ظهرا و من بعد الساعة 7 مساءا حت 12 مساء',
  ),
 const ControllerDoctor (
    id: '1',
    name:'سعيد عثمان سعيد',
    image:'assets/images/omar22.jpg',
    address:'قنا - قوص - شارع طريق النطر',
    specialty: 'دكتوراة النساء من جامعة القاهرة-دكتور نساء و توليد',
    telphone: '01125220555-01258555855',
    timeworks: 'من 9 صباحا - حتى 1 ظهرا و من بعد الساعة 7 مساءا حت 12 مساء',
  ),
  const ControllerDoctor (
    id: '1',
    name:'سعيد عثمان سعيد',
    image:'assets/images/omar22.jpg',
    address:'قنا - قوص - شارع طريق النطر',
    specialty: 'دكتوراة النساء من جامعة القاهرة-دكتور نساء و توليد',
    telphone: '01125220555-01258555855',
    timeworks: 'من 9 صباحا - حتى 1 ظهرا و من بعد الساعة 7 مساءا حت 12 مساء',
  ),
   
];
// /// [getLength] return number item in list
//   int getLength() => advertisements.length;

//   /// [getArticle] return dataArticle by index
//   ListAdv getAdv(int index) => advertisements.elementAt(index);
// }