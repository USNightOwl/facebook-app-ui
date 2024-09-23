import 'package:facebook_app_ui/features/news-feed/widgets/add_story_card.dart';
import 'package:facebook_app_ui/features/news-feed/widgets/story_card.dart';
import 'package:facebook_app_ui/models/story.dart';
import 'package:facebook_app_ui/models/user.dart';
import 'package:facebook_app_ui/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsFeedScreen extends StatefulWidget {
  static double offset = 0;
  final ScrollController parentScrollController;
  const NewsFeedScreen({super.key, required this.parentScrollController});

  @override
  State<NewsFeedScreen> createState() => _NewFeedScreenState();
}

class _NewFeedScreenState extends State<NewsFeedScreen> {
  Color colorNewPost = Colors.transparent;
  ScrollController scrollController =
      ScrollController(initialScrollOffset: NewsFeedScreen.offset);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final User user = Provider.of<UserProvider>(context).user;
    final stories = [
      Story(
        user: User(
          name: 'Doraemon',
          avatar: 'assets/images/user/doraemon.jpg',
          type: 'page',
        ),
        image: ['assets/images/story/1.jpg'],
        time: ['12 phút'],
        shareWith: 'public',
      ),
      Story(
        user: User(
            name: 'Sách Cũ Ngọc', avatar: 'assets/images/user/sachcungoc.jpg'),
        image: ['assets/images/story/2.jpg'],
        time: ['3 giờ'],
        shareWith: 'friends',
      ),
      Story(
        user: User(
          name: 'Vietnamese Argentina Football Fan Club (VAFFC)',
          avatar: 'assets/images/user/vaffc.jpg',
          type: 'page',
        ),
        image: ['assets/images/story/3.jpg'],
        time: ['5 giờ'],
        shareWith: 'friends-of-friends',
      ),
      Story(
        user: User(
            name: 'Minh Hương', avatar: 'assets/images/user/minhhuong.jpg'),
        image: [
          'assets/images/story/4.jpg',
          'assets/images/story/5.jpg',
          'assets/images/story/6.jpg',
          'assets/images/story/7.jpg',
        ],
        video: ['assets/videos/2.mp4', 'assets/videos/1.mp4'],
        time: ['1 phút'],
        shareWith: 'friends',
      ),
      Story(
        user: User(name: 'Khánh Vy', avatar: 'assets/images/user/khanhvy.jpg'),
        video: ['assets/videos/3.mp4'],
        time: ['1 phút'],
        shareWith: 'friends',
      ),
    ];

    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(user.avatar),
                    radius: 20,
                  ),
                ),
                Expanded(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      setState(() {
                        colorNewPost = Colors.transparent;
                      });
                    },
                    onTapUp: (tapUpDetails) {
                      setState(() {
                        colorNewPost = Colors.black12;
                      });
                    },
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Colors.black12,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        color: colorNewPost,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Text('Bạn đang nghĩ gì?'),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  splashRadius: 20,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.image,
                    color: Colors.green,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
          //
          Container(
            width: double.infinity,
            height: 3,
            color: Colors.black26,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: AddStoryCard(),
                  ),
                  ...stories.map(
                    (e) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      child: StoryCard(story: e),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
