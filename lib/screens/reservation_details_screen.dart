import 'package:flutter/material.dart';

class ReservationDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Détails de la réservation'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: Text('Marrakech'),
              subtitle: Text('Ville de départ'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('Agadir'),
              subtitle: Text('Ville d\'arrivée'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('1 Novembre 2024, à 14:30'),
              subtitle: Text('Date & heure'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('3'),
              subtitle: Text('Sièges'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('Petit'),
              subtitle: Text('Bagage'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('32\$'),
              subtitle: Text('Prix'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('kenza'),
              subtitle: Text('Passager'),
              trailing: Icon(Icons.arrow_forward),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Refuser'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Accepter'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
