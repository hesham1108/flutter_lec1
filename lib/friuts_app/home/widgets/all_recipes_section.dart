import 'package:flutter/material.dart';

class AllRecipesSection extends StatelessWidget {
  const AllRecipesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ExpansionTile(
            title: Text("Title"),
            subtitle: Text('Subtitle'),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Recipe 1'),
              Text('Recipe 2'),
              Text('Recipe 3'),
              Text('Recipe 4'),
              Text('Recipe 5'),
            ],
          ),
          ListTile(
            title: Text('Title'),
            subtitle: Text("subtitle"),

          ),

          
        ],
      ),
    );
  }
}
