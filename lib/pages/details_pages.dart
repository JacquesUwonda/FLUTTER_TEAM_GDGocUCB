import 'package:dart_exercice/constants/app_colors.dart';
import 'package:dart_exercice/utils/alerts/alerts.dart';
import 'package:dart_exercice/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String name;
  final String title;
  final String image;
  final String description;

  const DetailPage({
    super.key,
    required this.name,
    required this.title,
    required this.image,
    required this.description,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool following = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 16.0,
        children: [
          Hero(
            tag: widget.name,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                widget.image,
                width: 300.0,
                height: 270.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Card(
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: AppColors.appBarBackgroundColor,
                        ),
                      ),
                      Flexible(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              following = !following;
                              following
                                  ? Alerts.showSuccess(context, widget.name)
                                  : null;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: following
                                ? AppColors.appBarBackgroundColor
                                : AppColors.whiteColor,
                          ),
                          child: Text(
                            following ? "following" : "follow",
                            style: TextStyle(
                                color: following
                                    ? AppColors.whiteColor
                                    : AppColors.appBarBackgroundColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    widget.title,
                    style:
                        TextStyle(fontSize: 18.0, fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    widget.description,
                    style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 8.0),
                  ThreeStars(),
                ],
              ),
            ),
          ),
          SocialMedia(),
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
