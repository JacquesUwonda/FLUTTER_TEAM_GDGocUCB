import 'package:dart_exercice/constants/app_colors.dart';
import 'package:dart_exercice/utils/alerts/alerts.dart';
import 'package:dart_exercice/utils/members/all_members.dart';
import 'package:dart_exercice/utils/members/learners_member.dart';
import 'package:dart_exercice/utils/members/mentor_member.dart';
import 'package:dart_exercice/utils/members/other_member.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/widgets.dart';

class HomePage extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  const HomePage({super.key, required this.navigationShell});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final allMembers = combineMembers(mentorsData, learnersData, othersData);

  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(
          "Flutter Team Members | GDGonCampus UCB ",
          style: TextStyle(
            color: AppColors.whiteColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.info_outline,
              color: AppColors.whiteColor,
            ),
            onPressed: () {
              Alerts.showInfo(context);
            },
          ),
        ],
        backgroundColor: AppColors.appBarBackgroundColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(
          10,
        ),
        child: widget.navigationShell,
      ),
      bottomNavigationBar: Container(
        color: AppColors.whiteColor,
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: bottomNav(widget.navigationShell.currentIndex, (index) {
          _goBranch(index);
        }),
      ),
    );
  }
}
