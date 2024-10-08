import 'package:facebook_app_ui/models/user.dart';

class Post {
  final User user;
  final String time;
  final String shareWith;
  final List<String>? image;
  final List<String>? video;
  final String? content;
  final List<String>? text;
  final String? checkin;
  final int? like;
  final int? haha;
  final int? sad;
  final int? love;
  final int? lovelove;
  final int? angry;
  final int? comment;
  final int? share;
  final int? wow;
  final String? layout; // classic, column, quote, frame
  final String? type; //normal, share, memory, ...
  Post({
    required this.user,
    required this.time,
    required this.shareWith,
    this.image,
    this.video,
    this.content,
    this.text,
    this.checkin,
    this.like,
    this.haha,
    this.sad,
    this.love,
    this.lovelove,
    this.angry,
    this.comment,
    this.share,
    this.wow,
    this.layout,
    this.type,
  });
}
