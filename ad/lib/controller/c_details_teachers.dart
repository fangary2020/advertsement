
import 'package:ad/module/teacher_model.dart';

class Controllerteach {
List <ControllerTeachers>teachers = [
 const ControllerTeachers (
    id: '1',
    name:'عمر سعد الدين حسين',
    image:'assets/images/omar22.jpg',
    address:'قنا - قوص - شارع المحكمة الجديدة',
    specialty: 'تكنولوجيا المعلومات',
    stage: 'ابتدائى',
    telphone: '01125220555-01258555855',
    facebook: 'omar saad',
  ),
   const ControllerTeachers (
 id: '2',
    name:'شنودة حليم جرجس ',
    image:'assets/images/omar22.jpg',
    address:'قنا - قوص - شارع الكنيسة ',
    specialty: 'الفيزياء ',
    stage: 'ثانوى',
    telphone: '01125220555-01258555855',
    facebook: 'omar saad',
  ),
 const ControllerTeachers (
    id: '3',
    name:'محمد عيد عبد الحليم',
    image:'assets/images/omar22.jpg',
    address:'قنا - قوص - بجوار بنك القاهرة  ',
    specialty: ' اللغة العربية',
    stage: 'اعدادى',
    telphone: '01125220555-01258555855',
    facebook: 'omar saad',
  ),
 const ControllerTeachers (
    id: '4',
    name:'عبد الفتاح محمد هانى ',
    image:'assets/images/omar22.jpg',
    address:'قنا - قوص - شارع المحكمة الجديدة',
    specialty: 'لغة انجليزية',
    stage: 'ثانوى',
    telphone: '01125220555-01258555855',
    facebook: 'omar saad',
  ),
 const ControllerTeachers (
    id: '4',
    name:'عبد الفتاح محمد هانى ',
    image:'assets/images/omar22.jpg',
    address:'قنا - قوص - شارع المحكمة الجديدة',
    specialty: 'لغة انجليزية',
    stage: 'ثانوى',
    telphone: '01125220555-01258555855',
    facebook: 'omar saad',
  ),
  const ControllerTeachers (
   id: '4',
    name:'عبد الفتاح محمد هانى ',
    image:'assets/images/omar22.jpg',
    address:'قنا - قوص - شارع المحكمة الجديدة',
    specialty: 'لغة انجليزية',
    stage: 'ثانوى',
    telphone: '01125220555-01258555855',
    facebook: 'omar saad',
  ),
   
];
/// [getLength] return number item in list
  int getLength() => teachers.length;

  /// [getArticle] return dataArticle by index
  ControllerTeachers getTecher(int index) => teachers.elementAt(index);
// }
}