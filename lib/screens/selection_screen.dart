import 'package:flutter/material.dart';

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Driver or Rider?',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF007AFF), // Texte en bleu
                  shadows: [
                    Shadow(
                      blurRadius: 4.0,
                      color: Colors.black.withOpacity(0.25), // Ombre légère
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  // Action ou navigation pour Driver
                },
                child: Text('Driver'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Color(0xFF007AFF),
                  backgroundColor: Color(0xFFE3F2FD), // Texte en bleu
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Action ou navigation pour Rider
                },
                child: Text('Rider'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Color(0xFF007AFF),
                  backgroundColor: Color(0xFFE3F2FD), // Texte en bleu
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
