import 'package:flutter/material.dart';
// Phase 1: static screen
// my project : study_planner
void main(){
  runApp(const MyApp());
}
// static: Main application widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});
    @override
    Widget build(BuildContext context){
      return MaterialApp( debugShowCheckedModeBanner: false,
      title: 'My study Planner',
// static: Home screen
home: const StudyPlannerScreen(),);
    }
}
// Static:main study planner screen
class StudyPlannerScreen  extends StatelessWidget {
  const StudyPlannerScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // static: Application bar
      appBar: AppBar( title: const Text('My study planner'),
      centerTitle: true,  backgroundColor: const Color.fromARGB(255, 14, 76, 128), foregroundColor: Colors.white,),
    ),
    
  }
}