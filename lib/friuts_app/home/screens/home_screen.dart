import 'package:flutter/material.dart';
import 'package:flutter_lec1/friuts_app/home/widgets/all_recipes_section.dart';
import 'package:flutter_lec1/friuts_app/home/widgets/custom_home_app_bar.dart';
import 'package:flutter_lec1/friuts_app/home/widgets/home_header_widget.dart';
import 'package:flutter_lec1/friuts_app/home/widgets/recomendded_section.dart';
    
class HomeScreen extends StatelessWidget {

  const HomeScreen({ super.key });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          CustomHomeAppBar(),
          HomeHeaderWidget(),
          RecomenddedSection(),
          AllRecipesSection(),
        ],
      ),
    );
  }
}