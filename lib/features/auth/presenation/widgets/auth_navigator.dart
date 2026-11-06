import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/core/theme/app_colors.dart';
import 'package:social_mate/core/theme/app_text_styles.dart';

class AuthNavigator extends StatefulWidget {
  const AuthNavigator({
    super.key,
    this.initialIndex = 0,
    required this.children,
  });

  final int initialIndex;
  final List<Widget> children;

  @override
  State<AuthNavigator> createState() => _AuthNavigatorState();
}

class _AuthNavigatorState extends State<AuthNavigator> {
  late int _index = widget.initialIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [_tab("Sign in", 0), _tab("Sign up", 1)]),
        Row(
          children: List.generate(
            3,
            (i) => Expanded(flex: i > 1 ? 2 : 1, child: _divider(_index == i)),
          ),
        ),
        SizedBox(height: 30.h),
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          alignment: Alignment.topCenter,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: KeyedSubtree(
              key: ValueKey(_index),
              child: widget.children[_index],
            ),
          ),
        ),
      ],
    );
  }

  Widget _tab(String label, int i) {
    final selected = _index == i;
    return TextButton(
      onPressed: () => setState(() => _index = i),
      child: Text(
        label,
        style: AppTextStyles(
          selected ? AppColors.black : AppColors.black.withOpacity(0.6),
        ).f18Regular,
      ),
    );
  }

  Widget _divider(bool isSelected) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: 2.h,
      color: isSelected ? AppColors.primary : AppColors.grey,
    );
  }
}
