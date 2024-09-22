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
        ],
      ),
    );
  }
}
