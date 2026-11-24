import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/core/constants/app_constatnts.dart';
import 'package:social_mate/core/shared_widgets/spacer.dart';
import 'package:social_mate/core/theme/app_text_styles.dart';
import 'package:social_mate/features/onboarding/presentation/widgets/onboarding_background.dart';
import 'package:social_mate/home/presentations/widgets/create_post_widgets.dart/attachment_widget.dart';
import 'package:social_mate/home/presentations/widgets/create_post_widgets.dart/create_post_appbar.dart';
import 'package:social_mate/home/presentations/widgets/create_post_widgets.dart/create_post_bottom_sheet.dart';
import 'package:social_mate/home/presentations/widgets/create_post_widgets.dart/post_visability_widget.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  String? attachment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingBackground(
      child: 
      SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                CreatePostAppbar(onClose: (){
                  Navigator.pop(context);
                },),
                VerticalSpacer(35),
                PostVisabilityWidget(),
                VerticalSpacer(20),
                TextField(
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: "What's on your mind",
                    hintStyle: AppTextStyles(Color(0xff606073)).f18Regular,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    
                  ),
                ),

              attachment != null?  AttachmentWidget(attachment: AppConstatnts.networkNatureImage):
              SizedBox.shrink()
            
              ],
            ),
          ),
        ))
      ),

      bottomSheet: CreatePostBottomSheet(),
    );
  }
}