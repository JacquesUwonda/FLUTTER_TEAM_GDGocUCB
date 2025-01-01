import 'package:dart_exercice/utils/members/other_member.dart';
import 'package:dart_exercice/widgets/widgets.dart';
import 'package:flutter/material.dart';

class OtherMembers extends StatelessWidget {
  const OtherMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: othersData.length,
      itemBuilder: (context, index) {
        final member = othersData.values.elementAt(index);
        return Cards(
          name: member.name,
          title: member.title,
          image: member.image,
          function: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //       builder: (context) => DetailPage(
            //           name: member.name,
            //           title: member.title,
            //           image: member.image,
            //           description: member.description)),
            // );
          },
        );
      },
    );
  }
}
