import 'package:facebook_app_ui/models/user.dart';

class Story {
  final User user;
  final List<String>? image;
  final List<String>? video;
  final List<String>? music;
  final List<String> time;
  final String shareWith;
  final String? name;
  Story({
    required this.user,
    this.image,
    this.video,
    this.music,
    required this.time,
    required this.shareWith,
    this.name,
  });
}
