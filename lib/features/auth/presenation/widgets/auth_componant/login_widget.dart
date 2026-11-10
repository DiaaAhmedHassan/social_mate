import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/core/shared_widgets/aligner.dart';
import 'package:social_mate/core/shared_widgets/input_field.dart';
import 'package:social_mate/core/shared_widgets/primary_button.dart';
import 'package:social_mate/core/shared_widgets/spacer.dart';
import 'package:social_mate/core/theme/app_colors.dart';
import 'package:social_mate/core/theme/app_text_styles.dart';
import 'package:social_mate/features/auth/presenation/widgets/social_auth_widget.dart';
import 'package:social_mate/l10n/app_localizations.dart';

class LoginWidget extends StatelessWidget {
   LoginWidget({super.key, this.onSignupTap});

   final void Function()? onSignupTap;

  final TextEditingController emailPhoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return Form(
      key: loginFormKey,
      child: Column(
        children: [
          InputField(
            hint: local.authEmailPhoneEg,
            label: local.authEmailPhone,
          ),
          SizedBox(height: 28.h,),
          InputField(
            hint: local.authEnterPassword,
            label: local.authPassword,
          ),
        Aligner(
          align: MainAxisAlignment.end,
          child:  TextButton(onPressed: (){},
          child: Text(local.authForgetPassword, style: AppTextStyles(AppColors.black).f16Regular,),),),
          VerticalSpacer(32),
          PrimaryButton(label: local.authLogin, onPressed: (){}),
          VerticalSpacer(20),
          SocialAuthWidget(dividerText: local.orSignInWith),
           VerticalSpacer(60),

        RichText(
          text: TextSpan(
            text: local.donotHaveAnAccount,
            style: AppTextStyles(AppColors.black).f16Regular,
            children: [
              WidgetSpan(
                child: GestureDetector(
                  onTap: onSignupTap,
                  child: Text(
                    local.authSignup,
                    style: AppTextStyles(AppColors.primary).f16Regular,
                  ),
                ),
              ),
            ],
          ),
        )



        ],
      ),
    );
  }
}