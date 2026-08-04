import 'package:flutter/material.dart';
import '../widgets/search_card.dart';
import '../widgets/quick_service_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),

      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        title: const Text(
          "Mahar Basheer Movers",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.notifications, color: Colors.white),
          )
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: const [

            SearchCard(),

            SizedBox(height: 20),

            QuickServiceCard(),

          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(

        selectedItemColor: Colors.red,

        unselectedItemColor: Colors.grey,

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_number),
            label: "Bookings",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: "Track",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),

        ],
      ),
    );
  }
}