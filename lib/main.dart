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
}
     // LOGIC: Add a sample goal
void addGoal(){
setState(() {
goals.add({'subject': 'Java Programming', 'hours': '2 Hours','done': false,});});
}

@override
Widget build(BuildContext context){
  return Scaffold(
    // Static: Application bar
appBar: AppBar(
  title: const Text('My study planner'),centerTitle: true,
backgroundColor: const Color.fromARGB(255,14,76,128),
foregroundColor: Colors.white,
),
 // STATIC: Main screen content
 body: Padding(padding: const EdgeInsets.all(16.0),
 child:Column(
  crossAxisAlignment: CrossAxisAlignment.start, children: [
   // STATIC: Screen heading
const Text(
  'My Study Goals', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),
),
 
 const SizedBox(height:16),
  // CONNECTION 1: Connect goals data to the UI
Expanded(  child: ListView.builder(itemCount: goals.length,
itemBuilder: (context,index){
  return Card(
    child: ListTile(leading: Checkbox(value: goals[index]['done'],
    onChanged: (value){
      toggleGoal(index);
    },
    ),
  title: Text
  (goals[index]['subject'],style: TextStyle( decoration: goals[index]['done']
  ? TextDecoration.lineThrough:TextDecoration.none,
  ),),
  subtitle: Text(goals[index]['hours']),
  trailing:IconButton(icon:const Icon(Icons.delete,
  ),
    onPressed: () {
   deleteGoal(index);
    },
  ),
  onTap: (){
     toggleGoal(index);
    },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
 // CONNECTION 2: Connect the button to add function
  floatingActionButton: FloatingActionButton(
onPressed: addGoal,
child: const Icon(Icons.add),
  ),
  );
}
}
