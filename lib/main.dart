import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text Styling and Snackbar'),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title Text
          const Text(
            'Flutter Text Styling',
            style: TextStyle(
              fontSize: 24.0, // Larger font size
              fontWeight: FontWeight.bold, // Bold text
            ),
          ),
          const SizedBox(height: 8.0), // Spacing between title and subtitle

          // Subtitle Text
          const Text(
            'Experiment with text styles',
            style: TextStyle(
              fontSize: 16.0, // Smaller font size
              fontStyle: FontStyle.italic, // Italicized text
            ),
          ),
          const SizedBox(height: 20.0), // Spacing between subtitle and button

          // TextButton
          TextButton(
            onPressed: () {
              // Display Snackbar when button is pressed
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('You clicked the button!'),
                ),
              );
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.blue, // Button text color
            ),
            child: const Text('Click Me'),
          ),
        ],
      ),
    );
  }
}

//h
