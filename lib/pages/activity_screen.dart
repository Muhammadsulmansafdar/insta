import 'package:flutter/material.dart';

import '../widgets/activity_tiles.dart';
import '../widgets/utils.dart';


class ActivityScreen extends StatelessWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _screen = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: _screen.height,
        width: _screen.width,
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            ListTile(
                leading: Text('This Week',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16))),
            followActivityTile(
                context: context,
                followerUsername: 'Ali hamza',
                followerImageUrl: Utils.getRandomImageUrl(),
                isFollowed: false),
            commnetActivityTIle(
                isMention: true,
                otherUsername: 'Hammad',
                otherUserProfileImageUrl: Utils.getRandomImageUrl(),
                comment: 'Sulman is develing this application',
                commentedOnMediaUrl: Utils.getRandomImageUrl()),
            followActivityTile(
                context: context,
                followerUsername: 'Bry Nawab',
                followerImageUrl: Utils.getRandomImageUrl()),
            commnetActivityTIle(
                isMention: true,
                comment: '😂',
                otherUsername: 'Flutter developer',
                otherUserProfileImageUrl: Utils.getRandomImageUrl(),
                commentedOnMediaUrl: Utils.getRandomImageUrl()),
            commnetActivityTIle(
                isMention: false,
                comment:
                'Working on UI of Instagram with headache. 😂😂😂',
                otherUsername: 'Muhammad Suleman',
                otherUserProfileImageUrl: Utils.getRandomImageUrl(),
                commentedOnMediaUrl: Utils.getRandomImageUrl()),
            Divider(color: Colors.grey[500]),
            ListTile(
                leading: Text('This Month',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16))),
            likedOnPost(
              likedUsernames:
              List.generate(1000, (index) => 'apple${index.toString()}'),
              postUrl: Utils.getRandomImageUrl(),
              likedUserImageUrls:
              List.generate(2, (index) => Utils.getRandomImageUrl()),
            ),
            followActivityTile(
                context: context,
                followerUsername: 'Lahoriya',
                followerImageUrl: Utils.getRandomImageUrl(),
                isFollowed: true),
            followActivityTile(
                context: context,
                followerUsername: 'Khuda Jany',
                followerImageUrl: Utils.getRandomImageUrl(),
                isFollowed: true),
            followActivityTile(
                context: context,
                followerUsername: 'Fasilabad waly',
                followerImageUrl: Utils.getRandomImageUrl()),
          ],
        ),
      ),
    );
  }
}