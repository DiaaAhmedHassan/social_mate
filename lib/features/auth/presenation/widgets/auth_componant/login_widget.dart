import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/core/shared_widgets/aligner.dart';
import 'package:social_mate/core/shared_widgets/input_field.dart';
import 'package:social_mate/core/shared_widgets/primary_button.dart';
import 'package:social_mate/core/shared_widgets/spacer.dart';
import 'package:social_mate/core/theme/app_colors.dart';
import 'package:social_mate/core/theme/app_text_styles.dart';
import 'package:social_mate/features/auth/presenation/widgets/social_auth_widget.dart';

class LoginWidget extends StatelessWidget {
   LoginWidget({super.key});

  final TextEditingController emailPhoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginFormKey,
      child: Column(
        children: [
          InputField(
            hint: "eg: example@domain.com",
            label: "Email/Phone",
          ),
          SizedBox(height: 28.h,),
          InputField(
            hint: "Password",
            label: "Password",
          ),
        Aligner(
          align: MainAxisAlignment.end,
          child:  TextButton(onPressed: (){},
          child: Text("Forgot Password?", style: AppTextStyles(AppColors.black).f16Regular,),),),
          VerticalSpacer(32),
          PrimaryButton(label: "Login", onPressed: (){}),
          VerticalSpacer(20),
          SocialAuthWidget(dividerText: "or sign in with")



        ],
      ),
    );
  }
}