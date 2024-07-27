import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String welcomeWord;
  const SecondPage({super.key, required this.welcomeWord});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (p) {
        print("Hello We prevent Popped Successfully!");
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(''),
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            Center(
              child: Text(welcomeWord),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
