import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kuywork/components/text_form_field.dart';
import 'package:kuywork/config/constants.dart';

import '../components/c_elevated_button.dart';

class FilterJobsWidget extends StatefulWidget {
  const FilterJobsWidget({super.key});

  @override
  State<FilterJobsWidget> createState() => _FilterJobsWidgetState();
}

class _FilterJobsWidgetState extends State<FilterJobsWidget> {
  int? value = 1;
  RangeValues currentRangeValues = const RangeValues(40, 80);
  @override
  Widget build(BuildContext context) {
    return RPadding(
      padding: REdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      child: Scaffold(
        backgroundColor: Theme.of(context).bottomSheetTheme.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Divider(
                thickness: 3.sp,
                color: const Color(0xFFACACAC),
                indent: 120.w,
                endIndent: 120.w,
              ),
              SizedBox(
                height: 21.h,
              ),
              Text(
                'Salary Range',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(
                height: 30.h,
              ),
              RangeSlider(
                values: currentRangeValues,
                max: 100,
                divisions: 5,
                // activeColor: accentColor,
                labels: RangeLabels(
                  currentRangeValues.start.round().toString(),
                  currentRangeValues.end.round().toString(),
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    currentRangeValues = values;
                  });
                },
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                'Category',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(
                height: 20.h,
              ),
              CTextFormField(
                hintText: 'Designer',
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                'Sub Category',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(
                height: 20.h,
              ),
              CTextFormField(
                hintText: 'Logo Designer',
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                'Job Type',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(
                height: 20.h,
              ),
              Wrap(
                spacing: 5.0,
                children: List<Widget>.generate(
                  3,
                  (int index) {
                    return ChoiceChip(
                      selectedColor: accentColor,
                      padding: REdgeInsets.symmetric(
                          horizontal: 19.w, vertical: 11.h),
                      label: Text(
                        'Item $index',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      selected: value == index,
                      onSelected: (bool selected) {
                        setState(() {
                          value = selected ? index : null;
                        });
                      },
                    );
                  },
                ).toList(),
              ),
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: REdgeInsets.symmetric(vertical: 30.h),
          color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          child: CElevatedButton(title: 'Show result', onPressed: () {}),
        ),
      ),
    );
  }
}
