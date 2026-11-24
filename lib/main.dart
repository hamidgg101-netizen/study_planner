import 'package:flutter/material.dart';
//phase 2:Working List
//My project study_planner
void main(){
  runApp(const MyApp());
}
// Static: Main application widget
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
    debugShowCheckedModeBanner:false,
    title: 'My study planner',
    home: const StudyPlannerScreen(),
   )
  }
}
// STATIC: Main study planner screen
class StudyPlannerScreen extends

)