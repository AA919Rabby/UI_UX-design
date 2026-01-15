import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:testing_app/widgets/emotions_screen.dart';

import 'clone_screen.dart';


class ViewScreen extends StatefulWidget {
  const ViewScreen({super.key});

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

   class _ViewScreenState extends State<ViewScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 7), (){
      Get.offAll(()=>CloneScreen());
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Row (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text ('Hola, Farhan !',style: TextStyle(color: Colors.white,
                        fontSize: 24,fontWeight: FontWeight.bold),),
                    SizedBox(height: 8,),
                    Text('26 dec,2025',style: TextStyle(color: Colors.blue[200]),),
                  ],
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Icon (Icons.notifications,color: Colors.white,)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13),
            child: Container (
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.blue[600],
              ),
              padding: EdgeInsets.all(13),
              child: Row(
              children: [
                Icon(Icons.search,color: Colors.white,),
                SizedBox(width: 3,),
                Text('Search',style: TextStyle(color: Colors.white),),
              ],
            ),),
          ),
          SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text ('How do you feel ?',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
                  Icon(Icons.more_horiz,color: Colors.white,),
                ],
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Padding(
               padding: const EdgeInsets.all(18),
               child: Column (
                 children: [
                   EmotionsScreen(emoticonFace: '😥'),
                   SizedBox(height: 5,),
                   Text('Bad',style: TextStyle(color: Colors.white),),
                 ],
               ),
             ),
              Padding(
                padding: const EdgeInsets.all(18),
                child: Column (
                  children: [
                    EmotionsScreen(emoticonFace: '😄'),
                    SizedBox(height: 5,),
                    Text('Well',style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18),
                child: Column (
                  children: [
                    EmotionsScreen(emoticonFace: '☺'),
                    SizedBox(height: 5,),
                    Text('Fine',style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18),
                child: Column (
                  children: [
                    EmotionsScreen(emoticonFace: '🤩'),
                    SizedBox(height: 5,),
                    Text('Excellent',style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: Column( // Removed Center widget, it is not needed here
                children: [
                  // 1. ADDED PADDING HERE TO PLACE THE HEADER CORRECTLY
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Exercises',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black87
                          ),
                        ),
                        Icon(Icons.more_horiz, color: Colors.black87),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0), // Adjusted padding
                        child: Column(
                          children: [
                            Card(
                              elevation: 5,
                              shadowColor: Colors.black.withOpacity(0.4),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)), // Added rounded corners to card
                              child: ListTile(
                                contentPadding: EdgeInsets.all(8), // Added internal padding
                                leading: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.orange[100], // Changed color to match design trends
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    padding: EdgeInsets.all(10),
                                    child: Icon(Icons.favorite, color: Colors.orange)),
                                title: Text(
                                  'Speaking skills',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                subtitle: Text(
                                  '15 exercises',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(.5)),
                                ),
                                trailing: Icon(Icons.more_horiz),
                              ),
                            ),
                            Card(
                              elevation: 5,
                              shadowColor: Colors.black.withOpacity(0.4),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                              child: ListTile(
                                contentPadding: EdgeInsets.all(8),
                                leading: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blue[100],
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    padding: EdgeInsets.all(10),
                                    child: Icon(Icons.person, color: Colors.blue)),
                                title: Text(
                                  'Writing skills',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                subtitle: Text(
                                  '6 exercises',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(.5)),
                                ),
                                trailing: Icon(Icons.more_horiz),
                              ),
                            ),
                            Card(
                              elevation: 5,
                              shadowColor: Colors.black.withOpacity(0.4),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                              child: ListTile(
                                contentPadding: EdgeInsets.all(8),
                                leading: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.pink[100],
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    padding: EdgeInsets.all(10),
                                    child: Icon(Icons.book, color: Colors.pink)),
                                title: Text(
                                  'Reading skills',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                subtitle: Text(
                                  '11 exercises',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(.5),
                                  ),
                                ),
                                trailing: Icon(Icons.more_horiz),
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
        ],
      ))
    );
  }
}