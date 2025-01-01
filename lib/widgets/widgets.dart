import 'package:dart_exercice/constants/app_colors.dart';
import 'package:dart_exercice/constants/images_urls.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

Widget bottomNav(int selectedIndex, ValueChanged<int> tabchange) {
  return GNav(
    rippleColor: AppColors.grey300,
    hoverColor: AppColors.grey100,
    gap: 8,
    activeColor: AppColors.appBarBackgroundColor,
    iconSize: 24,
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    duration: const Duration(milliseconds: 400),
    tabBackgroundColor: AppColors.grey100,
    color: AppColors.appBarBackgroundColor,
    tabs: [
      GButton(
        icon: Icons.home,
        text: 'All',
      ),
      GButton(
        icon: Icons.lightbulb_rounded,
        text: 'Leaders',
      ),
      GButton(
        icon: Icons.sports_martial_arts_rounded,
        text: 'Learners',
      ),
      GButton(
        icon: Icons.people_alt_rounded,
        text: 'Others',
      ),
    ],
    selectedIndex: selectedIndex,
    onTabChange: tabchange,
  );
}

class Cards extends StatelessWidget {
  final String name;
  final String title;
  final GestureTapCallback? function;
  final String image;

  const Cards({
    super.key,
    required this.name,
    required this.title,
    required this.function,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.whiteColor,
      child: InkWell(
        onTap: function,
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 80,
          child: Row(
            children: [
              Hero(
                transitionOnUserGestures: true,
                tag: name,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.appBarBackgroundColor),
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                          color: AppColors.textGrey,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ThreeStars extends StatelessWidget {
  const ThreeStars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Mobile Developer',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 18)),
        const Spacer(),
        const Icon(Icons.star, size: 20, color: AppColors.starColor),
        const Icon(Icons.star, size: 20, color: AppColors.starColor),
        const Icon(Icons.star, size: 20, color: AppColors.starColor),
        const Icon(Icons.star_border, size: 20, color: AppColors.starColor),
        const Icon(Icons.star_border, size: 20, color: AppColors.starColor),
        const Text(
          "3.0",
          style: TextStyle(color: AppColors.appBarBackgroundColor),
        )
      ],
    );
  }
}

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 10,
      children: [
        Image(
          image: AssetImage(
            ImagesUrls.twitter,
          ),
          width: 40,
          height: 40,
        ),
        Image(
          image: AssetImage(
            ImagesUrls.linkedin,
          ),
          width: 40,
          height: 40,
        ),
        Image(
          image: AssetImage(
            ImagesUrls.whatsapp,
          ),
          width: 40,
          height: 40,
        ),
        Image(
          image: AssetImage(
            ImagesUrls.youtube,
          ),
          width: 40,
          height: 40,
        )
      ],
    );
  }
}
