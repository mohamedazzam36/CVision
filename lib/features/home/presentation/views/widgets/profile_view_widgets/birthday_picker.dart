import 'package:cvision/core/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BirthdayPicker extends StatefulWidget {
  const BirthdayPicker({super.key});

  @override
  State<BirthdayPicker> createState() => _BirthdayPickerState();
}

class _BirthdayPickerState extends State<BirthdayPicker> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showCupertinoDatePicker(context),
      child: Container(
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff929090)),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            const Icon(Icons.calendar_today),
            const SizedBox(width: 8),
            Text(
              selectedDate == null
                  ? "Select Date"
                  : "${selectedDate!.day.toString().padLeft(2, '0')}/"
                        "${selectedDate!.month.toString().padLeft(2, '0')}/"
                        "${selectedDate!.year}",
            ),
          ],
        ),
      ),
    );
  }

  void _showCupertinoDatePicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.secondaryColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return SizedBox(
          height: 200,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            initialDateTime: selectedDate ?? DateTime(1995, 1, 1),
            minimumDate: DateTime(1900),
            maximumDate: DateTime.now(),
            onDateTimeChanged: (value) {
              setState(() {
                selectedDate = value;
              });
            },
          ),
        );
      },
    );
  }
}
