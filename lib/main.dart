import 'package:flutter/material.dart';

import 'screens/announce_details_screen.dart';
import 'screens/reservation_details_screen.dart';

void main() => runApp(CarpoolingApp());

class CarpoolingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OffersPage(),
      routes: {
        '/announceDetails': (context) => AnnounceDetailsPage(),
        '/reservationDetails': (context) => ReservationDetailsPage(),
      },
    );
  }
}

class OffersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('offres',
            style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255))),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.location_on, color: Colors.grey),
                hintText: 'Point A',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.location_on, color: Colors.grey),
                hintText: 'Point B',
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("1 seat", style: TextStyle(fontSize: 16)),
                SizedBox(width: 5),
                Icon(Icons.add, color: Colors.grey),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.directions_car, color: Colors.blue),
                    title: Text("Depart --> Arrivee"),
                    trailing: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/announceDetails');
                      },
                      child: Text('reserve'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
