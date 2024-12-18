import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<String> investOptions = [
  'Real Estate',
  'Agriculture',
  'Gold',
  'Transportation',
  'Stocks',
];

class InvestOptionCard extends StatelessWidget {
  final String text;
  final bool isLastInRow;
  final bool isFirstInRow;

  const InvestOptionCard({
    super.key,
    required this.text,
    required this.isLastInRow,
    required this.isFirstInRow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      margin: EdgeInsets.only(
        right: isLastInRow ? 16.w : 12.w,
        left: isFirstInRow ? 16.w : 0,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        border: Border.all(width: 0.5, color: const Color(0xFFC9C9C9)),
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF999999).withOpacity(0.04),
            offset: const Offset(0, 6),
            blurRadius: 6,
          ),
        ],
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.w400,
          height: 1.467,
          color: const Color(0xFF001533),
        ),
      ),
    );
  }
}
