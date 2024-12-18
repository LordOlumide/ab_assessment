import 'package:ab_assessment/src/screens/home_screen/ui/components/nav_bar_item.dart';
import 'package:ab_assessment/src/utils/constants/assets.dart';
import 'package:ab_assessment/src/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<NavBarItem> navbarItems = [
  const NavBarItem(iconPath: VectorAssets.home, title: 'Home'),
  const NavBarItem(iconPath: VectorAssets.save, title: 'Save'),
  const NavBarItem(iconPath: VectorAssets.portfolio, title: 'Portfolio'),
  const NavBarItem(iconPath: VectorAssets.rewards, title: 'Rewards'),
  const NavBarItem(iconPath: VectorAssets.account, title: 'Account'),
];

class NavBar extends StatelessWidget {
  final int selectedIndex;

  const NavBar({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86.h,
      width: context.screenWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: 8,
            color: Colors.black.withOpacity(0.08),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (int i = 0; i < navbarItems.length; i++)
            SizedBox(
              width: 55.w,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    navbarItems[i].iconPath,
                  ),
                  Text(
                    navbarItems[i].title,
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w300,
                      height: 1.385,
                      color: selectedIndex == i
                          ? const Color(0xFF0066F6)
                          : const Color(0xFF90A0C1),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
