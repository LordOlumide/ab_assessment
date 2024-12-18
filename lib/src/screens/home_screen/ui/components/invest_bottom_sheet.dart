import 'package:ab_assessment/src/models/investment.dart';
import 'package:ab_assessment/src/screens/home_screen/ui/widgets/bottom_sheet_field.dart';
import 'package:ab_assessment/src/screens/home_screen/ui/widgets/invest_amount_card.dart';
import 'package:ab_assessment/src/utils/extensions/number_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<int> _defaultInvestmentOptions = [5000, 10000, 20000, 50000];

class InvestBottomSheet extends StatefulWidget {
  final Investment investment;

  const InvestBottomSheet({super.key, required this.investment});

  @override
  State<InvestBottomSheet> createState() => _InvestBottomSheetState();
}

class _InvestBottomSheetState extends State<InvestBottomSheet>
    with WidgetsBindingObserver {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _phoneNoController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _pinController = TextEditingController();

  final ScrollController _viewController = ScrollController();

  double bottomInset = 0.0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    _amountController.dispose();
    _phoneNoController.dispose();
    _nameController.dispose();
    _pinController.dispose();

    _viewController.dispose();
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    final value = View.of(context).viewInsets.bottom;
    setState(() {
      bottomInset = value;
      if (bottomInset != 0) {
        _viewController.animateTo(
          _viewController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 200),
          curve: Curves.fastOutSlowIn,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 836.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            16.boxHeight,
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 60.w,
                height: 6.h,
                decoration: BoxDecoration(
                  color: const Color(0xFFBDBDBD),
                  borderRadius: BorderRadius.circular(3.r),
                ),
              ),
            ),
            16.boxHeight,
            Expanded(
              child: SingleChildScrollView(
                controller: _viewController,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    20.boxHeight,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 48.r,
                          width: 48.r,
                          child: CircleAvatar(
                            radius: 48.r,
                            foregroundImage: widget.investment.image,
                          ),
                        ),
                        RichText(
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
                                    '${widget.investment.percentReturned.formatToString}%\n',
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2,
                                  color: const Color(0xFF16BE81),
                                ),
                              ),
                              TextSpan(
                                text:
                                    'Returns in ${widget.investment.timeToMaturity}',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    25.boxHeight,
                    Padding(
                      padding: EdgeInsets.only(left: 2.w),
                      child: Text(
                        widget.investment.name,
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          height: 1.294,
                        ),
                      ),
                    ),
                    10.boxHeight,
                    Padding(
                      padding: EdgeInsets.only(left: 2.w),
                      child: Text(
                        'by ${widget.investment.company}',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                          height: 1.385,
                        ),
                      ),
                    ),
                    30.boxHeight,
                    Wrap(
                      spacing: 22.w,
                      runSpacing: 22.h,
                      children: [
                        for (int i = 0;
                            i < _defaultInvestmentOptions.length;
                            i++)
                          InvestAmountCard(
                            amount: _defaultInvestmentOptions[i],
                          ),
                        SizedBox(
                          width: 234.w,
                          height: 44.h,
                          child: TextField(
                            controller: _amountController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xFFF5F6FB),
                              hintText: 'Enter other amount',
                              hintStyle: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                                height: 1.066,
                                color: const Color(0xFF999999),
                              ),
                              isCollapsed: true,
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 22.w, vertical: 14.h),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    30.boxHeight,
                    BottomSheetField(
                      name: 'Phone Number',
                      controller: _phoneNoController,
                      hintText: '+234 806 123 8970',
                      isPhoneNoField: true,
                    ),
                    16.boxHeight,
                    BottomSheetField(
                      name: 'Customer Name',
                      controller: _nameController,
                      hintText: 'Joseph Kalu',
                    ),
                    16.boxHeight,
                    BottomSheetField(
                      name: 'Pin',
                      controller: _pinController,
                      hintText: '****',
                      isPinField: true,
                    ),
                    30.boxHeight,
                    bottomInset != 0 ? 170.boxHeight : const SizedBox.shrink(),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                15.boxHeight,
                InkWell(
                  child: Container(
                    height: 50.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFF0066F6),
                      borderRadius: BorderRadius.circular(5.r),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 4.h),
                          blurRadius: 8,
                          color: const Color(0xFF323247).withOpacity(0.06),
                        ),
                        BoxShadow(
                          offset: Offset(0, 4.h),
                          blurRadius: 4,
                          color: const Color(0xFF323247).withOpacity(0.08),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'invest now'.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          height: 1.467,
                        ),
                      ),
                    ),
                  ),
                ),
                20.boxHeight,
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () => _onlearnMoreTapped(context),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Learn more aboout the investment',
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w400,
                            height: 1.294,
                            color: const Color(0xFF0066F6),
                          ),
                        ),
                        4.boxWidth,
                        SizedBox(
                          width: 24.r,
                          height: 24.r,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 18.r,
                            color: const Color(0xFF0066F6),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                31.boxHeight,
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _onlearnMoreTapped(BuildContext context) {}
}
