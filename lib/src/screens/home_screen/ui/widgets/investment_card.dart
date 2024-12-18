import 'package:ab_assessment/src/models/investment.dart';
import 'package:ab_assessment/src/utils/extensions/number_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class InvestmentCard extends StatelessWidget {
  final Investment investment;
  final VoidCallback onCardTapped;

  const InvestmentCard({
    super.key,
    required this.investment,
    required this.onCardTapped,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTapped,
      child: Container(
        width: 272.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(width: 0.5, color: const Color(0xFFC9C9C9)),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 8),
              blurRadius: 12.r,
              color: const Color(0xFF999999).withOpacity(0.08),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            14.boxHeight,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 14.w),
                  child: SizedBox(
                    height: 48.r,
                    width: 48.r,
                    child: CircleAvatar(
                      radius: 48.r,
                      foregroundImage: investment.image,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16.w),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w300,
                        height: 1.385,
                        color: const Color(0xFF001533),
                      ),
                      children: [
                        TextSpan(
                          text:
                              '${investment.percentReturned.formatToString}%\n',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            height: 1.2,
                            color: const Color(0xFF16BE81),
                          ),
                        ),
                        TextSpan(
                          text: 'Returns in ${investment.timeToMaturity}',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            35.boxHeight,
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Text(
                investment.name,
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  height: 1.467,
                  color: const Color(0xFF001533),
                ),
              ),
            ),
            8.boxHeight,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'N${NumberFormat.decimalPattern().format(investment.pricePerUnit)}',
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.2,
                          color: Color(0xFF001533),
                        ),
                      ),
                      const Text(
                        'per unit',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          height: 1.385,
                          color: Color(0xFF001533),
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 4.h,
                        horizontal: switch (investment.status) {
                          InvestmentStatus.stillSelling => 11,
                          InvestmentStatus.soldOut => 14,
                        },
                      ),
                      decoration: BoxDecoration(
                        color: switch (investment.status) {
                          InvestmentStatus.stillSelling =>
                            const Color(0xFFF1FDF9),
                          InvestmentStatus.soldOut => const Color(0xFFFFF0F2),
                        },
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      child: Text(
                        switch (investment.status) {
                          InvestmentStatus.stillSelling => 'Still selling',
                          InvestmentStatus.soldOut => 'Sold out',
                        },
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          height: 1.692,
                          color: switch (investment.status) {
                            InvestmentStatus.stillSelling =>
                              const Color(0xFF16BE81),
                            InvestmentStatus.soldOut => const Color(0xFFFF647C),
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            10.boxHeight,
          ],
        ),
      ),
    );
  }
}
