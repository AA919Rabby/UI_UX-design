import 'package:flutter/material.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  int selectedIndex = 0;
  // list of categories
  final List<String> categories = ["All", "Burger", "Pizza", "Pasta", "Salad"];

  // Reusable gradient
  final LinearGradient primaryGradient = LinearGradient(
    colors: [Colors.blue[800]!, Colors.blue[400]!],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      backgroundColor: Colors.lightBlue.withOpacity(.5),
      appBar: AppBar (
        // Background transparent so the gradient shows
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        toolbarHeight: 138,
       // flexibleSpace for background gradient color
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: primaryGradient,
          ),
        ),
      
        title: Column (
          children: [
            Row(
              children: [
                // avatar
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                  child: const CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=200&fit=crop'
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hola, Royce 🖐', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('Ready for lunch ?', style: TextStyle(color: Colors.white70, fontSize: 13)),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.notifications_none, color: Colors.white, size: 28),
              ],
            ),
            const SizedBox(height: 15),

            // Search Bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 12),
                  hintText: "Search your food...",
                  hintStyle: TextStyle(color: Colors.grey),
                   border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),

      // Scroll is start here
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey.withOpacity(.1),
        ),
        child: SingleChildScrollView (
          child: Padding (
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),

                // Banner
                Container (
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                      image: NetworkImage('https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=800'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      gradient: LinearGradient(
                        colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                        begin: Alignment.bottomRight,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("30% OFF", style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold)),
                        Text("On your first order today", style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 22),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Categories", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                       color: Colors.white)),
                   Text('See all', style: TextStyle( fontWeight: FontWeight.bold,
                       color: Colors.white)),
                 ],
               ),
                const SizedBox(height: 12),

                // Categories
                SizedBox (
                  height: 45,
                  child: ListView.builder (
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      // Boolean condition for selected categories color
                      bool isSelected = selectedIndex == index;
                      return GestureDetector(
                        onTap: () => setState(() => selectedIndex = index),
                        child: Container(
                          margin: const EdgeInsets.only(right: 12),
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            gradient: isSelected ? primaryGradient : null,
                            color: isSelected ? null : Colors.grey[100],
                            borderRadius: BorderRadius.circular(27),
                          ),
                          child: Text(
                            categories[index],
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 20),
                Text("Popular Now", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                    color: Colors.white)),
                const SizedBox(height: 12),

                // Gridview section
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    // List food images
                    List<String> foodPics = [
                      'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=400',
                      'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=400',
                      'https://images.unsplash.com/photo-1473093226795-af9932fe5856?w=400',
                      'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=400',
                    ];

                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10)],
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(image: NetworkImage(foodPics[index]), fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          const Text("Special Item", style: TextStyle(fontWeight: FontWeight.bold)),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("\$12.50", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(gradient: primaryGradient, shape: BoxShape.circle),
                                  child: const Icon(Icons.add, color: Colors.white, size: 20),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),

      //Bottom navigation
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue[800],
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "Carts"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Favourite"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile"),
        ],
      ),
    );
  }
}