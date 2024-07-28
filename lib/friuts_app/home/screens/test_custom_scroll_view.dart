import 'package:flutter/material.dart';

class TestCustomScrollView extends StatelessWidget {
  const TestCustomScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Sliver App Bar'),
            // floating: true,
            pinned: true,
            flexibleSpace: Container(
              color: Colors.green,
            ),
            expandedHeight: 300,
          ),
          // SliverFillRemaining(
          //   child: Container(
          //     color: Colors.white,
          //     child: Center(
          //       child: Text("Fillllllllllllll..."),
          //     ),
          //   ),
          // ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Text("Fill $index");
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
