import 'package:dart_exercice/pages/details_pages.dart';
import 'package:dart_exercice/utils/members/all_members.dart';
import 'package:dart_exercice/utils/members/learners_member.dart';
import 'package:dart_exercice/utils/members/mentor_member.dart';
import 'package:dart_exercice/utils/members/other_member.dart';
import 'package:dart_exercice/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AllMembers extends StatelessWidget {
  final allMembers = combineMembers(mentorsData, learnersData, othersData);
  AllMembers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: allMembers.length,
      itemBuilder: (context, index) {
        final members = allMembers[index];
        return Cards(
          name: members.name,
          title: members.title,
          image: members.image,
          function: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailPage(
                      name: members.name,
                      title: members.title,
                      image: members.image,
                      description: members.description)),
            );
          },
        );
      },
    );
  }
}
