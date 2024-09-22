import 'package:facebook_app_ui/models/post.dart';
import 'package:facebook_app_ui/models/story.dart';

class User {
  final String name;
  final String avatar;
  bool? verified;
  final String? cover;
  final int? friends;
  final int? likes;
  final int? followers;
  final List<String>? hobbies;
  final List<Story>? stories;
  final List<User>? topFriends;
  final String? hometown;
  List<SocialMedia>? socialMedias;
  final String? bio;
  final String? type;
  final List<Education>? educations;
  final bool? guard;
  final List<Post>? posts;
  final String? pageType;
  final String? address;
  User({
    required this.name,
    required this.avatar,
    this.verified,
    this.cover,
    this.friends,
    this.likes,
    this.followers,
    this.hobbies,
    this.stories,
    this.topFriends,
    this.hometown,
    this.socialMedias,
    this.bio,
    this.type,
    this.educations,
    this.guard,
    this.posts,
    this.pageType,
    this.address,
  });
}

class Education {
  final String majors;
  final String school;
  Education({
    required this.majors,
    required this.school,
  });
}

class SocialMedia {
  final String icon;
  final String name;
  final String link;
  SocialMedia({
    required this.icon,
    required this.name,
    required this.link,
  });
}
