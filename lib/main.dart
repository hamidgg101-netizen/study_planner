import 'package:flutter/material.dart';

// Phase 2: Working List
// My project: study_planner

void main() {
  runApp(const MyApp());
}
// STATIC: Main application widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My study planner',
      home: const StudyPlannerScreen(),
    );
  }
}
// STATIC: Main study planner screen
class StudyPlannerScreen extends StatefulWidget {
  const StudyPlannerScreen({super.key});

  @override
  State<StudyPlannerScreen> createState() => _StudyPlannerScreenState();
}

class _StudyPlannerScreenState extends State<StudyPlannerScreen> {

  // LOGIC: Study goals data
  List<Map<String, dynamic>> goals = [
    {
      'subject': 'Dart Programming','hours': '3 Hours','done': false,
    },
    {
      'subject': 'Flutter Development','hours': '2 Hours','done': false,
    },
  ];
  // Logic: Toggle goal completion
void  toggleGoal(int index){
 setState(() { goals[index]['done'] = !goals[index]['done'];
 });
}
  // LOGIC: Delete a goal
void deleteGoal(int index) {
    setState(() {  goals.removeAt(index); });
    
     // LOGIC: Add a sample goal
void addGoal(){
setState(() {
goals.add({'subject': 'Java Programming', 'hours': '2 Hours','done': false,});});
}
}
}

