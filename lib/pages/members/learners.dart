import 'package:dart_exercice/pages/details_pages.dart';
import 'package:dart_exercice/utils/members/learners_member.dart';
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class Learners extends StatelessWidget {
  const Learners({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: learnersData.length,
      itemBuilder: (context, index) {
        final member = learnersData.values.elementAt(index);
        return Cards(
          name: member.name,
          title: member.title,
          image: member.image,
          function: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailPage(
                      name: member.name,
                      title: member.title,
                      image: member.image,
                      description: member.description)),
            );
          },
        );
      },
    );
  }
}
