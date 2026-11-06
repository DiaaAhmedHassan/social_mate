import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/core/shared_widgets/input_field.dart';
import 'package:social_mate/core/shared_widgets/primary_button.dart';
import 'package:social_mate/core/shared_widgets/spacer.dart';
import 'package:social_mate/features/auth/presenation/widgets/social_auth_widget.dart';

class SignUpWidget extends StatelessWidget {
    SignUpWidget({super.key});

  final GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailPhoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: signupFormKey,
      child: Column(
        children: [
          InputField(
            controller: _nameController,
            hint: "eg: John doe",
            label: "Full name",
          ),
          SizedBox(height: 28.h,),
          InputField(
            controller: _emailPhoneController,
            hint: "eg: example@domain.com",
            label: "Email/Phone",
          ),
          SizedBox(height: 28.h,),
          InputField(
            controller: _passwordController,
            hint: "Enter password",
            label: "Password",
          ),
          SizedBox(height: 28.h,),
          InputField(
            controller: _confirmPasswordController,
            hint: "Enter password",
            label: "Retype password",
          ),
          VerticalSpacer(32),
          PrimaryButton(label: "Sign Up", onPressed: (){}),
          VerticalSpacer(20),
          SocialAuthWidget(dividerText: "or sign up with")



        ],
      ),
    );
  }
}