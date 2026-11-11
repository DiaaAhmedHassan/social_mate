import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/features/onboarding/presentation/widgets/onboarding_background.dart';
import 'package:social_mate/home/presentations/widgets/create_post_widget.dart';
import 'package:social_mate/home/presentations/widgets/home_app_bar.dart';
import 'package:social_mate/home/presentations/widgets/post_widget.dart';
import 'package:social_mate/home/presentations/widgets/story_circle.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  final List<PostWidget> posts = [
    PostWidget(),
    PostWidget(),
    PostWidget(),
    PostWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingBackground(child: 
      SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
            children: [
              HomeAppBar(),
              SizedBox(height: 28.h,),
              CreatePostWidget(),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 24.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(4, 
                  (i){
                    return
                    i<1? StoryCircle(
                      isMyStory: true,
                    ):
                    StoryCircle(isMyStory: false,
                    name: "Ahmed",);
                  })),
              ),
              
             
            ],
          ),
            ),

            SliverList.builder(
              itemCount: posts.length,
              itemBuilder: (context, index){
                return PostWidget();
              })
          ],
          
        ),
      )
      
      ),
    );
  }
}