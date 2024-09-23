import 'dart:math';

import 'package:facebook_app_ui/models/user.dart';
import 'package:facebook_app_ui/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PersonalScreen extends StatefulWidget {
  static const String routeName = '/personal';
  final User user;
  const PersonalScreen({super.key, required this.user});

  @override
  State<PersonalScreen> createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  final TextEditingController searchController = TextEditingController();
  final Random random = Random();
  bool isMine = false;
  int mutualFriends = 0;

  @override
  Widget build(BuildContext context) {
    User user = Provider.of<UserProvider>(context).user;
    if (widget.user.avatar != user.avatar) {
      user = widget.user;

      if (user.friends == null) {
        user = user.copyWith(
          friends: random.nextInt(5000),
        );
      }

      if (user.likes == null) {
        user = user.copyWith(
          likes: random.nextInt(1000000),
        );
      }

      if (user.type == 'page' && user.followers == null) {
        user = user.copyWith(
          followers: random.nextInt(1000000),
        );
      }
      mutualFriends = random.nextInt(user.friends ?? 1000);
    } else {
      setState(() {
        isMine = true;
      });
    }
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0.5),
            child: Container(
              color: Colors.black12,
              width: double.infinity,
              height: 0.5,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            splashRadius: 20,
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                    top: 5,
                    bottom: 5,
                  ),
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: 'Tìm kiếm',
                      hintStyle: const TextStyle(
                        fontSize: 18,
                      ),
                      prefixIcon: const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 10,
                        ),
                        child: Icon(
                          Icons.search_rounded,
                          color: Colors.grey,
                          size: 25,
                        ),
                      ),
                      prefixIconConstraints:
                          const BoxConstraints(minWidth: 45, maxHeight: 41),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey[200],
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignLabelWithHint: true,
                      contentPadding: EdgeInsets.zero,
                    ),
                    cursorColor: Colors.black,
                    textAlignVertical: TextAlignVertical.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                const SizedBox(
                  width: double.infinity,
                  height: 270,
                ),
                user.cover != null
                    ? Image.asset(
                        user.cover!,
                        fit: BoxFit.cover,
                        height: 220,
                        width: double.infinity,
                      )
                    : Container(
                        width: double.infinity,
                        height: 220,
                        color: Colors.grey,
                      ),
                Positioned(
                  left: 15,
                  bottom: 0,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 5,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(user.avatar),
                          radius: 75,
                        ),
                      ),
                      if (user.guard == true)
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset(
                            'assets/images/guard.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
