import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_lec1/friuts_app/home/widgets/custom_recipe_card.dart';

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Recommended Combo",
            style: TextStyle(
              color: Color(0xFF27214D),
              fontWeight: FontWeight.w500,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 16,
            width: double.infinity,
          ),
          SizedBox(
            height: 190,
            child: ListView.builder(
              
              physics: const BouncingScrollPhysics()
                  .applyTo(const ClampingScrollPhysics()),
              // physics: const AlwaysScrollableScrollPhysics(),
              // physics: const FixedExtentScrollPhysics(),
              // physics: const PageScrollPhysics(),
              // physics: const ClampingScrollPhysics(),
              // physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return const CustomRecipeCard(
                  label: "Chili pepper and lime combo",
                  price: "1,800",
                );
              },
            ),
          ),
          const SizedBox(
            height: 16,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
