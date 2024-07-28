import 'package:flutter/material.dart';

class CustomRecipeCard extends StatelessWidget {
  final Color? backgroundColor;
  final String? imgSrc;
  final String label, price;

  const CustomRecipeCard({
    super.key,
    this.backgroundColor,
    this.imgSrc,
    required this.label,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 275,
      child: Card(
        margin: const EdgeInsets.only(right: 25),
        color: backgroundColor ?? Colors.white,
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(imgSrc ?? "assets/images/plate1.png"),
                  Text(
                    label,
                    style: const TextStyle(
                      color: Color(0xFF27214D),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$ $price",
                        style: const TextStyle(
                          color: Color(0xFFF08626),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const CircleAvatar(
                          backgroundColor: Color(0xFFFFF2E7),
                          child: Icon(
                            Icons.add,
                            color: Color(0xFFFFA451),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                right: 0,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_outline,
                    color: Color(0xFFFFA451),
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
