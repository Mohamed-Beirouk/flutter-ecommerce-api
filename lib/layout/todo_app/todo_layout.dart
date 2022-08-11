import 'package:flutter/material.dart';
import 'package:supper/modules/todo_app/archived_tasks/archived_tasks_screen.dart';
import 'package:supper/modules/todo_app/done_tasks/done_tasks_screen.dart';
import 'package:supper/modules/todo_app/new_tasks/new_tasks_screen.dart';
// import 'package:sqflite/sqflite.dart';

class HomeLayout extends StatefulWidget {

  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}
//1- create database
//2-create tables
//3- open database
//4- insert into database
//5- get from database
//6- update from database
//7- delete from database
class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  List<Widget> screens = [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];
  List<String> title = [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];
  // late Database database;
  // @override
  // void initState() {
  //   super.initState();
  //   createDatabase();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title[currentIndex],
        ),
      ),
      body:screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          // insertToDatabase();
        },
        child: Icon(
    Icons.add,
        ),
      ),
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
    setState(() {
      currentIndex = index;
    });
        },
        items:
        [
        BottomNavigationBarItem(
            icon:Icon(
                Icons.menu
            ),
          label: 'Tasks',
        ),
        BottomNavigationBarItem(
            icon:Icon(
                Icons.check_circle_outline
            ),
            label: 'Done',
          ),
        BottomNavigationBarItem(
            icon:Icon(
                Icons.archive_outlined
            ),
            label: 'Archived',
          )
        ],
      ),
    );
  }
//   Future<String> getName() async
//   {
//     return 'ahmed aly';
//   }
//   void createDatabase()async
//   {
//      database = await openDatabase(
//       'todo.db',
//       version: 1,
//       onCreate: (database,version)
//       {
// print('database created');
// database.execute('CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXT , status TEXT)').then((value){
//   print('table created');
// }).catchError((error){
//   print('some error ${error.toString()}');
// });
//       },
//       onOpen: (database)
//       {
// print('database opened');
//       },
//     );
//   }
//   void insertToDatabase(){
//     database.transaction((txn)
//     {
//       txn.rawInsert(
//           'INSERT INTO tasks(title, date, time,status) VALUES("first task","02-30-2022","12h:00","new")',
//       )
//           .then((value)
//       {
//         print('$value inserted successfully');
//       }).catchError((error){
//         print("error when inserting new record${error.tostring()}");
//       });
//    return null;
//     });
//   }

}
