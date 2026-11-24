import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/core/theme/app_colors.dart';
import 'package:social_mate/core/theme/app_text_styles.dart';

class TabsNavigator extends StatefulWidget {
  const TabsNavigator({
    super.key,
    this.initialIndex = 0,
    required this.pages, 
    required this.page1Name, 
    required this.page2Name,
    this.isCenterd = false,

  });

  final int initialIndex;
 final List<Widget Function(ValueChanged<int> goTo)> pages;
 final String page1Name;
 final String page2Name;
 final bool isCenterd;

  @override
  State<TabsNavigator> createState() => _TabsNavigatorState();
}

class _TabsNavigatorState extends State<TabsNavigator> {
  late int _index = widget.initialIndex;

   void _goTo(int i) {
    if (i == _index) return;
    setState(() => _index = i);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _tabsBar(),
        SizedBox(height: 30.h),
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          alignment: Alignment.topCenter,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: KeyedSubtree(
              key: ValueKey(_index),
              child: widget.pages[_index](_goTo),
            ),
          ),
        ),
      ],
    );
  }

Widget _tab(String label, int i) {
  final selected = _index == i;
  return AnimatedContainer(
    duration: const Duration(milliseconds: 300),
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          width: 2.h,
          color: selected ? AppColors.primary : Colors.transparent,
        ),
      ),
    ),
    child: TextButton(
      onPressed: () => _goTo(i),
      child: Text(
        label,
        style: AppTextStyles(
          selected ? AppColors.black : AppColors.black.withValues(alpha: 0.6),
        ).f18Regular,
      ),
    ),
  );
}


  Widget _tabsBar() {
  return Stack(
    children: [
      // full-width grey baseline
      Positioned(
        left: 0,
        right: 0,
        bottom: 0,
        child: Container(height: 2.h, color: AppColors.grey),
      ),
      Row(
        mainAxisAlignment:
            widget.isCenterd ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: [
          _tab(widget.page1Name, 0),
          _tab(widget.page2Name, 1),
        ],
      ),
    ],
  );
}
}
