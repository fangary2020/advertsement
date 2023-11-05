import 'package:ad/controller/c_details_teachers.dart';
import 'package:ad/views/details/details_screen_tech.dart';
import 'package:ad/widget/w_appbar.dart';
import 'package:ad/widget/w_categorylist.dart';
import 'package:flutter/material.dart';

class MainTeacher extends StatelessWidget {
  const MainTeacher({super.key});
//final ControllerTeachers data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WidgetAppbar(namebar: 'اعلانات المدرسين'),
      body: Column(
        children: [
          const CategoryList(),
          Expanded(
            flex: 4,
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              itemCount: Controllerteach().getLength(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 450,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) => DetailTech(
                // data: ControllerMusem().getMusem(index),
                id: Controllerteach().getTecher(index).id,
                name: Controllerteach().getTecher(index).name,
                image: Controllerteach().getTecher(index).image,
                address: Controllerteach().getTecher(index).address,
                specialty: Controllerteach().getTecher(index).specialty,
                 stage: Controllerteach().getTecher(index).stage,
                telphone: Controllerteach().getTecher(index).telphone,
                facebook: Controllerteach().getTecher(index).facebook,
              ),
            ),
          ),
          FloatingActionButton.extended(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromARGB(255, 91, 107, 214),
            icon: const Icon(Icons.home_max_outlined),
            label: const Text('عودة الى الرئيسية'),
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
