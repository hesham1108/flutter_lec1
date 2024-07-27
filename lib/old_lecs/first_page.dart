import 'package:flutter/material.dart';
import 'package:flutter_lec1/old_lecs/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String welcomeWord = '';
  TextEditingController welcomeController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState> ();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            const Text('I am the First Page After THe Poor Page'),
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: welcomeController,
                    onChanged: (s) {
                      print(s);
                    },
                    onEditingComplete: () {
                      welcomeWord = welcomeController.text;
                      print(welcomeWord);
                    },
                  
                    decoration: InputDecoration(
                      hintText: "email@gmail.com",
                      label: Text("Email"),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back To Poor Page"),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(
                      welcomeWord: welcomeController.text,
                    ),
                  ),
                );
              },
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.blue,
              ),
            ),

            
          ],
        ),
      ),
    );
  }
}
