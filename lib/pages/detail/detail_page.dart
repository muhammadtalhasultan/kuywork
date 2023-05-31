import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuywork/components/c_elevated_button.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../config/constants.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: kLightPrimaryColor,
            )),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'WarunkPedia',
          style: GoogleFonts.poppins(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: kLightPrimaryColor),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/svg/menu_icon.svg'))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: REdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              decoration: const BoxDecoration(
                  color: accentColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: REdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.all(Radius.circular(8.r))),
                    child: Theme.of(context).brightness == Brightness.light
                        ? SvgPicture.asset('assets/svg/company_icon_light.svg')
                        : SvgPicture.asset('assets/svg/company_icon_dark.svg'),
                  ),
                  SizedBox(
                    height: 21.h,
                  ),
                  Text(
                    'Product Manager',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: kLightPrimaryColor),
                  ),
                  Text('Jakarta, Indonesia',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                              fontWeight: FontWeight.w400,
                              color: kLightPrimaryColor)),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
            RPadding(
              padding: REdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 35.h,
                  ),
                  Container(
                    width: double.infinity,
                    padding: REdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color:
                            Theme.of(context).bottomSheetTheme.backgroundColor,
                        borderRadius: BorderRadius.all(Radius.circular(16.r))),
                    child: ToggleSwitch(
                      minWidth: 160.w,
                      minHeight: 45.h,
                      fontSize: 14.sp,
                      initialLabelIndex: 1,
                      radiusStyle: true,
                      activeBgColor: const [accentColor],
                      activeFgColor: Theme.of(context).primaryColor,
                      inactiveBgColor: Colors.transparent,
                      inactiveFgColor: Theme.of(context).primaryColor,
                      totalSwitches: 2,
                      cornerRadius: 10.r,
                      labels: const [
                        'Description',
                        'Company',
                      ],
                      onToggle: (index) {
                        log('switched to: $index');
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text('Job description',
                      style: Theme.of(context).textTheme.headlineSmall),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis a imperdiet tortor. Mauris sed nisl id odio dictum pulvinar non finibus nibh. Aenean aliquet nulla nec lorem porta luctus.',
                      style: Theme.of(context).textTheme.titleSmall),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text('Requirements',
                      style: Theme.of(context).textTheme.headlineSmall),
                  ListTile(
                    contentPadding: REdgeInsets.all(0),
                    leading: SvgPicture.asset('assets/svg/send_icon.svg'),
                    title: Text(
                        'Bachelor\'s degree in product design or engineering.',
                        style: Theme.of(context).textTheme.titleSmall),
                  ),
                  ListTile(
                    contentPadding: REdgeInsets.all(0),
                    leading: SvgPicture.asset('assets/svg/send_icon.svg'),
                    title: Text(
                        'Strong experience in a dynamic product management role.',
                        style: Theme.of(context).textTheme.titleSmall),
                  ),
                  ListTile(
                    contentPadding: REdgeInsets.all(0),
                    leading: SvgPicture.asset('assets/svg/send_icon.svg'),
                    title: Text(
                        'Proven experience overseeing all elements of the product development lifecycle.',
                        style: Theme.of(context).textTheme.titleSmall),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: REdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        child: CElevatedButton(title: 'Apply Now', onPressed: () {}),
      ),
    );
  }
}
