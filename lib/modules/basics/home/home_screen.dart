import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return
     Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.blue,
         leading:Icon(
           Icons.menu,
         ),
         title: Text('an app',
         ),
         actions:
         [
           IconButton(
             onPressed: (){
               print('notification pressed');
             },
             icon:Icon(
             Icons.notification_important,
           ),
           ),

           IconButton(
             onPressed: (){
             print('search pressed');
           },
             icon: Icon(
               Icons.search,
             ),
           ),
         ],
         centerTitle:true,
         elevation:0 ,
       ),
       body: SingleChildScrollView(
         scrollDirection:Axis.horizontal,
         child: Row(
           children: [
             Container(
               color: Colors.red,
               child: Text(
                 'first text',
                 style: TextStyle(
                   color:Colors.white,
                   fontSize: 30,

                 ),
               ),
             ),
             Container(
               color: Colors.red,
               child: Text(
                 'first text',
                 style: TextStyle(
                   color:Colors.white,
                   fontSize: 30,

                 ),
               ),
             ),
             Container(
               color: Colors.red,
               child: Text(
                 'first text',
                 style: TextStyle(
                   color:Colors.white,
                   fontSize: 30,

                 ),
               ),
             ),
             Container(
               color: Colors.red,
               child: Text(
                 'first text',
                 style: TextStyle(
                   color:Colors.white,
                   fontSize: 30,

                 ),
               ),
             ),
             Container(
               color: Colors.red,
               child: Text(
                 'first text',
                 style: TextStyle(
                   color:Colors.white,
                   fontSize: 30,

                 ),
               ),
             ),
             Container(
               color: Colors.red,
               child: Text(
                 'first text',
                 style: TextStyle(
                   color:Colors.white,
                   fontSize: 30,

                 ),
               ),
             ),
             Container(
               color: Colors.red,
               child: Text(
                 'first text',
                 style: TextStyle(
                   color:Colors.white,
                   fontSize: 30,

                 ),
               ),
             ),
             Container(
               color: Colors.red,
               child: Text(
                 'first text',
                 style: TextStyle(
                   color:Colors.white,
                   fontSize: 30,

                 ),
               ),
             ),
             Container(
               color: Colors.red,
               child: Text(
                 'first text',
                 style: TextStyle(
                   color:Colors.white,
                   fontSize: 30,

                 ),
               ),
             ),
             Container(
               color: Colors.red,
               child: Text(
                 'first text',
                 style: TextStyle(
                   color:Colors.white,
                   fontSize: 30,

                 ),
               ),
             ),
             Container(
               color: Colors.red,
               child: Text(
                 'first text',
                 style: TextStyle(
                   color:Colors.white,
                   fontSize: 30,

                 ),
               ),
             ),
             Container(
               color: Colors.red,
               child: Text(
                 'first text',
                 style: TextStyle(
                   color:Colors.white,
                   fontSize: 30,

                 ),
               ),
             ),
             Container(
               color: Colors.red,
               child: Text(
                 'first text',
                 style: TextStyle(
                   color:Colors.white,
                   fontSize: 30,

                 ),
               ),
             ),
             Container(
               color: Colors.red,
               child: Text(
                 'first text',
                 style: TextStyle(
                   color:Colors.white,
                   fontSize: 30,

                 ),
               ),
             ),
             Container(
               color: Colors.red,
               child: Text(
                 'first text',
                 style: TextStyle(
                   color:Colors.white,
                   fontSize: 30,

                 ),
               ),
             ),
             Container(
               color: Colors.red,
               child: Text(
                 'first text',
                 style: TextStyle(
                   color:Colors.white,
                   fontSize: 30,

                 ),
               ),
             ),
             Container(
               color: Colors.red,
               child: Text(
                 'first text',
                 style: TextStyle(
                   color:Colors.white,
                   fontSize: 30,

                 ),
               ),
             ),
             Container(
               color: Colors.red,
               child: Text(
                 'first text',
                 style: TextStyle(
                   color:Colors.white,
                   fontSize: 30,

                 ),
               ),
             ),
             Container(
               color: Colors.red,
               child: Text(
                 'first text',
                 style: TextStyle(
                   color:Colors.white,
                   fontSize: 30,

                 ),
               ),
             ),
             Container(
               color: Colors.red,
               child: Text(
                 'first text',
                 style: TextStyle(
                   color:Colors.white,
                   fontSize: 30,

                 ),
               ),
             ),
             Container(
               color: Colors.red,
               child: Text(
                 'first text',
                 style: TextStyle(
                   color:Colors.white,
                   fontSize: 30,

                 ),
               ),
             ),
             Container(
               color: Colors.red,
               child: Text(
                 'first text',
                 style: TextStyle(
                   color:Colors.white,
                   fontSize: 30,

                 ),
               ),
             ),
           ],
         ),
       ),
     );
  }

}