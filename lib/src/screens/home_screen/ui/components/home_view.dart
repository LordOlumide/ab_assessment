import 'package:ab_assessment/src/screens/home_screen/data/dummy_investments.dart';
import 'package:ab_assessment/src/screens/home_screen/ui/widgets/invest_option_card.dart';
import 'package:ab_assessment/src/screens/home_screen/ui/widgets/investment_card.dart';
import 'package:ab_assessment/src/utils/utils_barrel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  final TextEditingController searchController;
  final FocusNode searchFocusNode;

  const HomeView({
    super.key,
    required this.searchController,
    required this.searchFocusNode,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          31.boxHeight,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: GestureDetector(
              onTap: () {},
              child: SizedBox(
                width: 24.w,
                height: 24.w,
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 24.w,
                  color: const Color(0xFF666666),
                ),
              ),
            ),
          ),
          50.boxHeight,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              'Choose an\ninvestment platform',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 30.sp,
                fontWeight: FontWeight.w300,
                height: 1.106,
                color: const Color(0xFF001533).withOpacity(0.5),
              ),
            ),
          ),
          14.boxHeight,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 17.sp,
                  height: 1.306,
                  fontWeight: FontWeight.w300,
                  color: const Color(0xFF001533),
                ),
                children: const [
                  TextSpan(text: 'Not sure what you want to invest \nin? '),
                  TextSpan(
                    text: 'See recommendations.',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF16BE81),
                    ),
                  ),
                ],
              ),
            ),
          ),
          31.boxHeight,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Container(
              height: 50.h,
              decoration: BoxDecoration(
                color: const Color(0xFFF5F6FB),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search,
                      size: 24.r,
                      color: const Color(0xFF666666),
                    ),
                    16.boxWidth,
                    Expanded(
                      child: TextField(
                        focusNode: searchFocusNode,
                        controller: searchController,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          height: 1.467,
                        ),
                        decoration: InputDecoration(
                          isCollapsed: true,
                          isDense: true,
                          hintText: 'Search for investment',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 15.sp,
                            height: 1.467,
                          ),
                          border: InputBorder.none,
                        ),
                        onTapOutside: (_) {
                          searchFocusNode.unfocus();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          16.boxHeight,
          SizedBox(
            height: 34,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (int i = 0; i < investOptions.length; i++)
                  InvestOptionCard(
                    text: investOptions[i],
                    isLastInRow: i + 1 == investOptions.length,
                    isFirstInRow: i == 0,
                  ),
              ],
            ),
          ),
          34.boxHeight,
          SizedBox(
            height: 630.h,
            child: GridView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(bottom: 16.h),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 30.w,
                crossAxisSpacing: 30.h,
                childAspectRatio: 0.6041,
              ),
              children: [
                for (int i = 0; i < dummyInvestments.length; i++)
                  InvestmentCard(
                    investment: dummyInvestments[i],
                    isFirstInRow: dummyInvestments.length ~/ 2 > i,
                    isLastInRow: dummyInvestments.length ~/ 2 - 1 < i,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
