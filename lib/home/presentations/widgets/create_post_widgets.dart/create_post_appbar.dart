import 'package:flutter/material.dart';
import 'package:social_mate/core/shared_widgets/spacer.dart';
import 'package:social_mate/core/theme/app_text_styles.dart';

class CreatePostAppbar extends StatelessWidget {
  const CreatePostAppbar({super.key, required this.onClose});

  final void Function() onClose;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          IconButton(onPressed: onClose, 
          icon: Icon(Icons.close)),
          HorizontalSpacer(8),
          Text("Create post", style: AppTextStyles(Color(0xff3F3F40)).f18Regular,)
        ],),

        TextButton(onPressed: (){}, child: Text("Post", style: AppTextStyles(Color(0xff3F3F40)).f16Regular,))
      ],
    );
  }
}