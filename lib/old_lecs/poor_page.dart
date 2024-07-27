import 'package:flutter/material.dart';
import 'package:flutter_lec1/old_lecs/first_page.dart';

class PoorPage extends StatelessWidget {
  const PoorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00A6D4),
      appBar: AppBar(
        title: const Text(
          "I Am Poor",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        elevation: 10,
        shadowColor: const Color(0xff004E5A).withOpacity(0.6),
        centerTitle: true,
        backgroundColor: const Color(0xff004E5A),
      ),
      body: Center(
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/images/poor_cat.jpeg'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FirstPage(),
                    ),
                  );
                },
                child: const Text("Go to the First Page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
