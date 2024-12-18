import 'package:ab_assessment/src/utils/extensions/number_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomSheetField extends StatelessWidget {
  final String name;
  final TextEditingController controller;
  final String hintText;
  final bool isPhoneNoField;
  final bool isPinField;

  const BottomSheetField({
    super.key,
    required this.name,
    required this.controller,
    required this.hintText,
    this.isPhoneNoField = false,
    this.isPinField = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
            height: 1.3333,
            color: const Color(0xFF001533),
          ),
        ),
        10.boxHeight,
        TextField(
          controller: controller,
          obscureText: isPinField,
          textCapitalization: TextCapitalization.words,
          keyboardType: isPinField
              ? TextInputType.number
              : isPhoneNoField
                  ? TextInputType.phone
                  : null,
          inputFormatters:
              isPinField ? [FilteringTextInputFormatter.digitsOnly] : [],
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFF5F6FB),
            focusColor: const Color(0xFF999999).withOpacity(0.05),
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              height: 1.385,
              color: const Color(0xFF666666),
            ),
            isCollapsed: true,
            isDense: true,
            contentPadding: EdgeInsets.all(16.w),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.w,
                color: const Color(0xFFE4E4E4).withOpacity(0.6),
              ),
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
          onTapOutside: (_) {
            FocusScope.of(context).unfocus();
          },
        ),
      ],
    );
  }
}
