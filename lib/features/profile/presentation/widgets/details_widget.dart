import 'package:flutter/material.dart';
import 'package:social_mate/core/shared_widgets/spacer.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _details_card(),
        VerticalSpacer(10),
        _details_card(title: "Work experiance", icon: Icons.work_outline),
      ],
    );
  }

  Widget _details_card({
    String title = 'About me',
    String body = 'Lorem ipsum dolor sit amet, adipiscing elit. Pellentesque leo lectus iaculis vel velit.',
    IconData icon = Icons.account_box_outlined,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE6E8EE)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0F000000),
            blurRadius: 12,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Icon(icon, size: 24, color: const Color(0xFF5F6272)),
              const SizedBox(width: 12),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF5F6272),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Text(
            body,
            style: const TextStyle(
              fontSize: 16,
              height: 1.6,
              color: Color(0xFF8A8D9B),
            ),
          ),
        ],
      ),
    );
  }
}
