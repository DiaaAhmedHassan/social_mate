import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_mate/core/constants/assets.dart';
import 'package:social_mate/core/shared_widgets/spacer.dart';

class PostActionWidget extends StatelessWidget {
  const PostActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            _action(icon: AppIcons.like,number:  "124"),
            HorizontalSpacer(20),
            _action(icon: AppIcons.chatCircle, number: "111"),
            HorizontalSpacer(20),
            _action(icon: AppIcons.share),
          ],
        ),
        _action(icon: AppIcons.save)
      ],
    );
  }


  Widget _action({required String icon, String? number}){
    return Row(children: [
      SvgPicture.asset(icon),
      HorizontalSpacer(4),
      Text(number??"")
    ],);
  }
}