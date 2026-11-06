import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_mate/core/constants/assets.dart';
import 'package:social_mate/core/shared_widgets/divider_with_text.dart';
import 'package:social_mate/core/shared_widgets/spacer.dart';
import 'package:social_mate/core/theme/app_colors.dart';
import 'package:social_mate/core/theme/app_text_styles.dart';

class SocialAuthWidget extends StatelessWidget {
  const SocialAuthWidget({super.key, required this.dividerText});
  final String dividerText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DividerWithText(text: dividerText),
        VerticalSpacer(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: _socialButton(
                iconPath: AppIcons.googleIcon,
                label: "Google",
                onPressed: () {},
              ),
            ),
          ],
        ),
       
      ],
    );
  }

  Widget _socialButton({
    required String iconPath,
    required String label,
    required void Function() onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
      shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(5.r),
          side: BorderSide(color: Color(0xff656F78), width: 1.5.w),
        ),
        
      
        backgroundColor: AppColors.white.withOpacity(0)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(iconPath),
          HorizontalSpacer(5),
          Text(label, style: AppTextStyles(Color(0xff656F78)).f14Medium),
        ],
      ),
    );
  }
}
