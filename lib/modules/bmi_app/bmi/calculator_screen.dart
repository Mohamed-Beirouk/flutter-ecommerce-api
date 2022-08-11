import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:supper/modules/bmi_app/bmi_result/bmi_result_screen.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  bool isMale = true;
  double height = 120;
  int weight = 40;
  int age = 20;

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  backgroundColor: Colors.white,
  elevation: 0,

  title: Center(
    child: Text(
        'calculator',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
    ),
  ),
),
      body: Column(
        children: [
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                     setState(() {
                       isMale = true;
                     });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color:isMale? Colors.blue :Colors.black12,
                        borderRadius:BorderRadius.circular(30),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Image(
                          image: AssetImage('assets/images/add.png'),
                         height: 90,
                         width: 90,

                        ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'MALE',
                            style:TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                        ]
                      ),
                    ),
                  ),
                ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color:isMale?Colors.black12:Colors.blue,
                          borderRadius:BorderRadius.circular(30),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                      Image(
                        image: AssetImage('assets/images/adding.png'),
                        height: 90,
                        width: 90,
                      ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'female',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),

                      ),

                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width:double.infinity,
                decoration: BoxDecoration(
                  color:Colors.black12,
                  borderRadius:BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style:TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                            style:TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,

                            )
                        ),
                        Text(
                            'cm',
                            style:TextStyle(
                              fontWeight: FontWeight.bold,

                            )
                        ),
                      ],
                    ),
                    Slider(
                      value: height,
                      max: 220,
                      min: 80,
                      onChanged: (value){
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(

            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color:Colors.black12,
                        borderRadius:BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'weight',
                          style:TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                            '$weight',
                            style:TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,

                            )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              },
                              heroTag: 'age+',
                              mini: true,
                              child: Icon(
                                Icons.remove,
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                              heroTag: 'age-',
                              mini: true,
                              child: Icon(
                                Icons.add,
                              ),
                            ),
                          ],
                        ),
                      ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color:Colors.black12,
                        borderRadius:BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style:TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                              '$age',
                              style:TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,

                              )
                          ),
                          Row(
                            mainAxisAlignment:MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                heroTag: 'weight+',
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: 'wieght-',
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
           width: double.infinity,
           color: Colors.blue,
           child: MaterialButton(
             onPressed: (){
             double result = weight / pow( height /100,2);
     Navigator.push(context,
       MaterialPageRoute(
         builder: (context)=> BmiResultScreen(
           age: age,
           isMale: isMale,
           result: result.round(),
         ),
       ),
     );
           },
             child:Text(
               'click calculate',
             ),
           ),
         ),
        ],
      ),
    );
  }
}