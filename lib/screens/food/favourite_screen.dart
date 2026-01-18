import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        centerTitle: true,
        title: const Text(
          'Favourite',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: 1,
          shrinkWrap: true,
          itemBuilder: (context,index){
          return SizedBox(
            height: 80,
            child: Card (
              elevation: 6,
              shadowColor: Colors.black.withOpacity(0.6),
              child: ListTile (
                contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                leading: CircleAvatar (
                    radius: 25,
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=400'),
                ),
                title: Text('Special Item',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),),
                subtitle: Text('\$12.50'),
               trailing:Icon(Icons.delete_forever_sharp,color: Colors.red,),
              ),
            ),
          );
      }),
    );
  }
}
