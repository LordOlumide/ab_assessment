import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class InvestAmountCard extends StatelessWidget {
  final int amount;

  const InvestAmountCard({super.key, required this.amount});

  @override
  Widget build(BuildContext context) {
    final TextStyle style = TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.w400,
      height: 1.066,
      color: const Color(0xFF001533),
    );

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 14.h),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F6FB),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '₦',
            style: style.copyWith(
                fontSize: 12, color: Colors.black, fontFamily: ''),
          ),
          Text(
            NumberFormat.decimalPattern().format(amount),
            style: style,
          ),
        ],
      ),
    );
  }
}
