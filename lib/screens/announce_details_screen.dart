import 'package:flutter/material.dart';

class AnnounceDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Détails de l\'annonce'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              title: Text('kenza'),
              subtitle: Text('3 sièges'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pushNamed(context, '/reservationDetails');
              },
            ),
            ListTile(
              title: Text('khalil'),
              subtitle: Text('1 siège'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pushNamed(context, '/reservationDetails');
              },
            ),
            ListTile(
              title: Text('Zouhair'),
              subtitle: Text('2 sièges'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pushNamed(context, '/reservationDetails');
              },
            ),
            ListTile(
              title: Text('Imane'),
              subtitle: Text('1 siège'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pushNamed(context, '/reservationDetails');
              },
            ),
          ],
        ),
      ),
    );
  }
}
