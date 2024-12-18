import 'package:ab_assessment/src/screens/home_screen/ui/components/home_view.dart';
import 'package:ab_assessment/src/screens/home_screen/ui/components/nav_bar.dart';
import 'package:ab_assessment/src/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();
  final FocusNode searchFocusNode = FocusNode();

  int selectedIndex = 0;

  @override
  void dispose() {
    searchController.dispose();
    searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: context.screenHeight -
                    context.topScreenPadding -
                    context.bottomScreenPadding -
                    86.h,
                child: HomeView(
                  searchController: searchController,
                  searchFocusNode: searchFocusNode,
                ),
              ),
              NavBar(selectedIndex: selectedIndex),
            ],
          ),
        ),
      ),
    );
  }
}
