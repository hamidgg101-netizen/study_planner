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
    
    // Static: main screen content
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          // Static: Screen heading
        const Text(
          'My study Goal',style: TextStyle(fontWeight: FontWeight.bold,),),
          const SizedBox(height: 16),
          // static first goal card
          Card(
            child: ListTile(
              leading: const Icon(Icons.book,color: Colors.blue,),
              title: const Text('Dart Programming'),
              subtitle: const Text ('3 Hours'),
              trailing: const Icon(Icons.flag),
            )
          ),
          //Static:Second goal
            Card(
            child: ListTile(
              leading: const Icon(Icons.computer, color: Colors.green,),
                   title: const Text('Flutter Development'),
                   subtitle: const Text('2 Hours'),
                   trailing: const Text('Icons.flag'),

            ),
                ),

          // Static:Third goal card
      Card(
            child:ListTile(
              leading: const Icon(Icons.storage,color: Colors.orange,),
            title: const Text('Database System'),
            subtitle: const Text('1 Hours'),
            trailing: const Icon(Icons.flag),
            
            ),
          ),
          ],

      
      ),
    ),
    );
  }
}