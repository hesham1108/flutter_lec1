import 'package:flutter/material.dart';

class TestPageView extends StatefulWidget {
  const TestPageView({super.key});

  @override
  State<TestPageView> createState() => _TestPageViewState();
}

class _TestPageViewState extends State<TestPageView> {
  List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: PageView(
                // scrollDirection: Axis.vertical,
                // reverse: true,

                onPageChanged: (i) {
                  print('Page changed: $i');
                  setState(() {
                    index = i;
                  });
                },
                children: [
                  Container(color: Colors.red),
                  Container(color: Colors.blue),
                  Container(color: Colors.green),
                ],
              ),
            ),
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (i) => IconButton(
                onPressed: () {},
                icon: Icon(index == i ? Icons.circle : Icons.circle_outlined),
                color: colors[i],
              ),
            ),

            // [
            //   IconButton(
            //     onPressed: () {},
            //     icon: Icon(index == 0 ? Icons.circle : Icons.circle_outlined),
            //     color: Colors.red,
            //   ),
            //   IconButton(
            //     onPressed: () {},
            //     icon: Icon(index == 1 ? Icons.circle : Icons.circle_outlined),
            //     color: Colors.blue,
            //   ),
            //   IconButton(
            //     onPressed: () {},
            //     icon: Icon(index == 2 ? Icons.circle : Icons.circle_outlined),
            //     color: Colors.green,
            //   ),
            // ],
          ),
        ],
      ),
    );
  }
}
