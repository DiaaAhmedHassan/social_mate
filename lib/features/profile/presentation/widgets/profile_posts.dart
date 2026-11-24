import 'package:flutter/material.dart';
import 'package:social_mate/home/presentations/widgets/home_page_widgets/post_widget.dart';

class ProfilePosts extends StatelessWidget {
  const ProfilePosts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [PostWidget(), PostWidget()]);
  }
}
