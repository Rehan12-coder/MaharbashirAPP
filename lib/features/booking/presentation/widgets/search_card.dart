import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
          )
        ],
      ),

      child: Column(

        children: [

          TextField(
            decoration: InputDecoration(
              labelText: "From",
              prefixIcon: Icon(Icons.location_on),
            ),
          ),

          SizedBox(height: 15),

          TextField(
            decoration: InputDecoration(
              labelText: "To",
              prefixIcon: Icon(Icons.flag),
            ),
          ),

          SizedBox(height: 15),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 55),
              backgroundColor: Colors.red,
            ),
            onPressed: () {},
            child: Text(
              "SEARCH BUS",
              style: TextStyle(color: Colors.white),
            ),
          )

        ],
      ),
    );
  }
}