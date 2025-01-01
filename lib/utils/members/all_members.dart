import 'package:dart_exercice/utils/members.dart';

List<Member> combineMembers(Map<String, Member> mentors,
    Map<String, Member> learners, Map<String, Member> others) {
  final allMembers = <Member>[];
  allMembers.addAll(mentors.values);
  allMembers.addAll(learners.values);
  allMembers.addAll(others.values);
  return allMembers;
}
