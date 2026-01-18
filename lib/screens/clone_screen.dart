import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing_app/screens/food_screen.dart';

class CloneScreen extends StatefulWidget {
  const CloneScreen({super.key});

  @override
  State<CloneScreen> createState() => _CloneScreenState();
}

class _CloneScreenState extends State<CloneScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 7), (){
      Get.offAll(()=>FoodScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Facebook lite clone',style: TextStyle(
            color: Colors.blueAccent[700],fontSize: 28,fontWeight: FontWeight.bold),),
        elevation: 0,
        scrolledUnderElevation: 0,
        actions: [
          Icon(Icons.search,color: Colors.black,size: 30,),
          SizedBox(width: 10,),
          Icon(Icons.menu,color: Colors.black,size: 30,),
          SizedBox(width: 5,),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home,color: Colors.blue,size: 30,),
                Icon(Icons.people_outline,color: Colors.grey[600],size: 30,),
                Icon(Icons.chat_bubble_outline,color: Colors.grey[600],size: 30,),
                Icon(Icons.ondemand_video,color: Colors.grey[600],size: 30,),
                Icon(Icons.notifications_none,
                  color: Colors.grey[600],
                  size: 30,
                ),
              ],
            ),
          ),
          Expanded(child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/no1.png'),
                        radius: 20,
                      ),
                      SizedBox(width: 10,),
                      Expanded(child: Text("What's on your mind ?",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 16,
                        ),
                      )),
                      Icon(Icons.camera_alt,color: Colors.grey[700],size: 25,),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  child: ListView(
                    scrollDirection:Axis.horizontal,
                    children: [
                      makeStory(
                        storyImage: 'assets/images/no1.png',
                        userImage: 'assets/images/no2.png',
                        userName: 'Farhan',
                      ),
                      makeStory(
                        storyImage: 'assets/images/no2.png',
                        userImage: 'assets/images/no2.png',
                        userName:'Shafiq',
                      ),
                      makeStory(
                        storyImage: 'assets/images/no3.png',
                        userImage: 'assets/images/no3.png',
                        userName:'Ahmed',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                makeFeed(
                  userName: 'Shafiq',
                  userImage: 'assets/images/no2.png',
                  feedTime: '1 hour ago',
                  feedText: 'Hola ! Hope you all are doing well.'
                      'This is my new account.',
                  feedImage: 'assets/images/no2.png',
                ),
                makeFeed(
                  userName: 'Ahmed',
                  userImage: 'assets/images/no3.png',
                  feedTime: '39 minutes ago',
                  feedText: 'Beautiful day today !',
                  feedImage: 'assets/images/no3.png',
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }

  makeStory({storyImage,userImage,userName}){
    return AspectRatio(aspectRatio: 1.2/2,
        child: Container(
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: AssetImage(storyImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.1),
              ]),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue,width: 3),
                    image: DecorationImage(image: AssetImage(userImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  userName,style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
                ),
              ],
            ),
          ),
        ),
    );
  }


  makeFeed({userName,userImage,feedTime,feedText,feedImage}){
    return Padding(padding: EdgeInsets.all(10),
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(userImage),
                    radius: 20,
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(userName,style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),),
                      Text(feedTime,
                        style: TextStyle(
                          color: Colors.grey,fontSize: 12,),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.more_horiz),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Text(
                feedText,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black87,
                ),
              ),
            ),
            Image.asset(feedImage,fit: BoxFit.cover,width: double.infinity,),
            Padding(padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.thumb_up_alt_rounded,color: Colors.grey,),
                      SizedBox(width: 5,),
                      Text('Like'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.comment,color: Colors.grey,),
                      SizedBox(width: 5,),
                      Text('Comment'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.share_outlined,color: Colors.grey,),
                      SizedBox(width: 5,),
                      Text('Share'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}
