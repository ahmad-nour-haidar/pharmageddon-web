import 'package:flutter/material.dart';

import '../../core/resources/app_text_theme.dart';

class SelectableTextRich extends StatelessWidget {
  const SelectableTextRich({
    super.key,
    required this.s1,
    required this.s2,
    this.ts1 = AppTextStyle.f16w600black,
    this.ts2 = AppTextStyle.f16w400black,
  });

  final String s1, s2;
  final TextStyle ts1, ts2;

  @override
  Widget build(BuildContext context) {
    return SelectableText.rich(
      scrollPhysics: const NeverScrollableScrollPhysics(),
      TextSpan(
        children: [
          TextSpan(text: s1, style: ts1.copyWith(height: 1.5)),
          TextSpan(text: s2, style: ts2.copyWith(height: 1.5)),
        ],
      ),
    );
  }
}
