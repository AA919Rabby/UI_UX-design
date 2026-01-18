import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        centerTitle: true,
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Center(
            //Container for profile picture and name
            child: Container (
              height: 250,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.lightBlue.withOpacity(.5),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(82),
                  bottomLeft: Radius.circular(82),
                ),
              ),
              // Inner column for content
              child: Column (
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=200&fit=crop'),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Royce',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 37,
                      letterSpacing: 2,
                    ),
                  ),
                  Text('royce@dev.com',style: TextStyle(
                    color: Colors.white,letterSpacing: 2,
                  ),),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Expanded (
            child: SingleChildScrollView (
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:30),
                child: Column (
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Card (
                      elevation: 5,
                      shadowColor: Colors.black.withOpacity(0.4),
                      child: ListTile (
                        leading: CircleAvatar(
                          radius: 18,
                          child: Icon(Icons.person,color: Colors.grey[800]),
                        ),
                        title: Text('Edit profile',),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    Card (
                      elevation: 5,
                      shadowColor: Colors.black.withOpacity(0.4),
                      child: ListTile (
                        leading: CircleAvatar(
                          radius: 18,
                          child: Icon(Icons.settings,color: Colors.black,),
                        ),
                        title: Text('Settings'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    Card (
                      elevation: 5,
                      shadowColor: Colors.black.withOpacity(0.4),
                      child: ListTile (
                        leading: CircleAvatar(
                          radius: 18,
                          child: Icon(Icons.info),
                        ),
                        title: Text('About us'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    Card (
                      elevation: 5,
                      shadowColor: Colors.black.withOpacity(0.4),
                      child: ListTile (
                        leading: CircleAvatar(
                          radius: 18,
                          child: Icon(Icons.logout,color: Colors.red,),
                        ),
                        title: Text('Log out'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}