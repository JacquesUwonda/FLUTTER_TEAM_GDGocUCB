import 'package:dart_exercice/pages/details_pages.dart';
import 'package:dart_exercice/utils/members/mentor_member.dart';
import 'package:dart_exercice/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Leaders extends StatelessWidget {
  const Leaders({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mentorsData.length,
      itemBuilder: (context, index) {
        final member = mentorsData.values.elementAt(index);
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
