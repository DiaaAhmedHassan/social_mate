import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/core/shared_widgets/input_field.dart';
import 'package:social_mate/core/shared_widgets/primary_button.dart';
import 'package:social_mate/core/shared_widgets/spacer.dart';
import 'package:social_mate/features/auth/presenation/widgets/social_auth_widget.dart';
import 'package:social_mate/l10n/app_localizations.dart';

class SignUpWidget extends StatelessWidget {
    SignUpWidget({super.key});

  final GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailPhoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return Form(
      key: signupFormKey,
      child: Column(
        children: [
          InputField(
            controller: _nameController,
            hint:local.exampleName,
            label: local.authFullName,
          ),
          SizedBox(height: 28.h,),
          InputField(
            controller: _emailPhoneController,
            hint: local.authEmailPhoneEg,
            label: local.authEmailPhone,
          ),
          SizedBox(height: 28.h,),
          InputField(
            controller: _passwordController,
            hint: local.authEnterPassword,
            label: local.authPassword,
          ),
          SizedBox(height: 28.h,),
          InputField(
            controller: _confirmPasswordController,
            hint: local.authRetypePassword,
            label: local.authConfirmPassword,
          ),
          VerticalSpacer(32),
          PrimaryButton(label: local.authSignup, onPressed: (){}),
          VerticalSpacer(20),
          SocialAuthWidget(dividerText: local.orSignupWith)



        ],
      ),
    );
  }
}