import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuywork/components/search_text_field.dart';
import 'package:kuywork/components/secondary_button.dart';
import 'package:kuywork/config/constants.dart';

import '../../utils/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Hello, Mr Barn',
          style: GoogleFonts.poppins(
              fontSize: 16.sp,
              fontWeight: FontWeight.w300,
              color: kLightPrimaryColor),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/svg/notification_icon.svg'))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Find your dream job here',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: kLightPrimaryColor),
                ),
                SizedBox(
                  height: 18.h,
                ),
                SearchTextFormField(
                  hintText: 'Search job',
                  prefixIcon: Theme.of(context).brightness == Brightness.light
                      ? SvgPicture.asset('assets/svg/search_icon_light.svg')
                      : SvgPicture.asset('assets/svg/search_icon_dark.svg'),
                  suffixIcon: RPadding(
                    padding: REdgeInsets.all(15),
                    child: Theme.of(context).brightness == Brightness.light
                        ? SvgPicture.asset('assets/svg/filter_icon_light.svg')
                        : SvgPicture.asset('assets/svg/filter_icon_dark.svg'),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: REdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Top Companies',
                    style: Theme.of(context).textTheme.headlineSmall),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      RouteGenerator.searchPage,
                    );
                  },
                  child: Text('See all',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontSize: 14.sp)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            flex: 5,
            child: ListView.builder(
                padding: REdgeInsets.only(left: 20.w),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => Container(
                      padding: REdgeInsets.all(15),
                      margin: REdgeInsets.only(right: 10.w),
                      decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.r))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: REdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Theme.of(context).shadowColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.r))),
                                child: Theme.of(context).brightness ==
                                        Brightness.light
                                    ? SvgPicture.asset(
                                        'assets/svg/company_icon_light.svg')
                                    : SvgPicture.asset(
                                        'assets/svg/company_icon_dark.svg'),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('WarunkPedia',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge),
                                  Text('Product Manager',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 18.h,
                          ),
                          Row(
                            children: [
                              Theme.of(context).brightness == Brightness.light
                                  ? SvgPicture.asset(
                                      'assets/svg/location_icon_light.svg')
                                  : SvgPicture.asset(
                                      'assets/svg/location_icon_dark.svg'),
                              SizedBox(
                                width: 7.w,
                              ),
                              Text('Jakarta, Indonesia',
                                  style:
                                      Theme.of(context).textTheme.titleSmall),
                            ],
                          ),
                          Row(
                            children: [
                              Theme.of(context).brightness == Brightness.light
                                  ? SvgPicture.asset(
                                      'assets/svg/clock_icon_light.svg')
                                  : SvgPicture.asset(
                                      'assets/svg/clock_icon_dark.svg'),
                              SizedBox(
                                width: 7.w,
                              ),
                              Text('Full Time',
                                  style:
                                      Theme.of(context).textTheme.titleSmall),
                            ],
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          SizedBox(
                              width: 200.w,
                              child: SecondaryButton(
                                  title: 'Learn More',
                                  onPressed: () {
                                    Navigator.of(context).pushNamed(
                                      RouteGenerator.detailPage,
                                    );
                                  }))
                        ],
                      ),
                    )),
          ),
          SizedBox(
            height: 22.h,
          ),
          RPadding(
            padding: REdgeInsets.symmetric(horizontal: 20.w),
            child: Text('Recomendation',
                style: Theme.of(context).textTheme.headlineSmall),
          ),
          SizedBox(
            height: 17.h,
          ),
          Expanded(
            flex: 4,
            child: ListView.builder(
              padding: REdgeInsets.symmetric(horizontal: 20.w),
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                padding: REdgeInsets.symmetric(horizontal: 20.w),
                margin: REdgeInsets.only(bottom: 15.h),
                decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.all(Radius.circular(16.r))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          child: SizedBox(),
                        ),
                        InkWell(
                          onTap: () {},
                          child: SvgPicture.asset('assets/svg/saved_icon.svg'),
                        )
                      ],
                    ),
                    ListTile(
                      contentPadding: REdgeInsets.all(0),
                      leading: Container(
                        padding: REdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Theme.of(context).shadowColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.r))),
                        child: Theme.of(context).brightness == Brightness.light
                            ? SvgPicture.asset('assets/svg/icon_light.svg')
                            : SvgPicture.asset('assets/svg/icon_dark.svg'),
                      ),
                      title: Text('Link Lunk',
                          style: Theme.of(context).textTheme.titleLarge),
                      subtitle: Text('Product Manager',
                          style: Theme.of(context).textTheme.titleMedium),
                      trailing: Text('\$1200/mo',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(fontSize: 13.sp)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Theme.of(context).brightness == Brightness.light
                                ? SvgPicture.asset(
                                    'assets/svg/location_icon_light.svg')
                                : SvgPicture.asset(
                                    'assets/svg/location_icon_dark.svg'),
                            SizedBox(
                              width: 7.w,
                            ),
                            Text('Jakarta, Indonesia',
                                style: Theme.of(context).textTheme.titleSmall),
                          ],
                        ),
                        Row(
                          children: [
                            Theme.of(context).brightness == Brightness.light
                                ? SvgPicture.asset(
                                    'assets/svg/clock_icon_light.svg')
                                : SvgPicture.asset(
                                    'assets/svg/clock_icon_dark.svg'),
                            SizedBox(
                              width: 7.w,
                            ),
                            Text('Full Time',
                                style: Theme.of(context).textTheme.titleSmall),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
