import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/core/shared_widgets/input_field.dart';
import 'package:social_mate/core/shared_widgets/primary_button.dart';
import 'package:social_mate/core/shared_widgets/spacer.dart';
import 'package:social_mate/core/theme/app_colors.dart';
import 'package:social_mate/core/theme/app_text_styles.dart';
import 'package:social_mate/core/utils/helpers/text_validators.dart';
import 'package:social_mate/features/auth/presenation/cubit/auth_cubit.dart';
import 'package:social_mate/features/auth/presenation/cubit/auth_state.dart';
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
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if(state is AuthError){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message, style: AppTextStyles(AppColors.white).f18Regular,), backgroundColor: AppColors.red,));
        }

        if(state is Authenticated){
          debugPrint("============:Authenticated successfully");
        }
      },
      builder: (context, state){
 
      return Form(
        key: signupFormKey,
        child: Column(
          children: [
            InputField(
              controller: _nameController,
              hint:local.exampleName,
              label: local.authFullName,
              validator: TextValidator.validateFullName,
            ),
            SizedBox(height: 28.h,),
            InputField(
              controller: _emailPhoneController,
              hint: local.authEmailPhoneEg,
              label: local.authEmailPhone,
              validator: TextValidator.validateEmail,
            ),
            SizedBox(height: 28.h,),
            InputField(
              isPassword: true,
              isObsecureText: true,
              controller: _passwordController,
              hint: local.authEnterPassword,
              label: local.authPassword,
              validator: TextValidator.validatePassword,
            ),
            SizedBox(height: 28.h,),
            InputField(
              isPassword: true,
              isObsecureText: true,
              controller: _confirmPasswordController,
              hint: local.authRetypePassword,
              label: local.authConfirmPassword,
              validator: TextValidator.validateConfirmPassword(() => _passwordController.text),
            ),
            VerticalSpacer(32),
          state is AuthLoading? CircularProgressIndicator():
            PrimaryButton(label: local.authSignup, onPressed: (){
              if(signupFormKey.currentState!.validate()){
              context.read<AuthCubit>().signup(
                fullName: _nameController.text, 
                email: _emailPhoneController.text, 
                password: _passwordController.text);
            }}),
            VerticalSpacer(20),
            SocialAuthWidget(dividerText: local.orSignupWith)
      
          ],
        ),
      );},
    );
  }
}