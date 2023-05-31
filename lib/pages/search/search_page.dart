import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuywork/widgets/filter_jobs_widget.dart';

import '../../components/search_text_field.dart';
import '../../config/constants.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
          'Search',
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
                SizedBox(
                  height: 18.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SearchTextFormField(
                        hintText: 'Search job',
                        prefixIcon:
                            Theme.of(context).brightness == Brightness.light
                                ? SvgPicture.asset(
                                    'assets/svg/search_icon_light.svg')
                                : SvgPicture.asset(
                                    'assets/svg/search_icon_dark.svg'),
                        suffixIcon: RPadding(
                          padding: REdgeInsets.all(15),
                          child: SvgPicture.asset(
                            'assets/svg/cancel.svg',
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? kLightBodyTextColor
                                    : kDarkBodyTextColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                        padding: REdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Theme.of(context).shadowColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.r))),
                        child: InkWell(
                          onTap: () {
                            filterJobs(context);
                          },
                          child:
                              Theme.of(context).brightness == Brightness.light
                                  ? SvgPicture.asset(
                                      'assets/svg/filter_icon_light.svg')
                                  : SvgPicture.asset(
                                      'assets/svg/filter_icon_dark.svg'),
                        )),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Container(
                      padding: REdgeInsets.symmetric(
                          horizontal: 12.w, vertical: 11.h),
                      decoration: BoxDecoration(
                          color: Theme.of(context).shadowColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      child: Row(
                        children: [
                          Text(
                            'Designer',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          SizedBox(
                            width: 9.w,
                          ),
                          SvgPicture.asset(
                            'assets/svg/cancel.svg',
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? kLightBodyTextColor
                                    : kDarkBodyTextColor,
                          )
                        ],
                      ),
                    ),
                  ],
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
          RPadding(
            padding: REdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Search Result',
                    style: Theme.of(context).textTheme.headlineSmall),
                Text('20 Jobs Found',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontSize: 14.sp)),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            // flex: 1,
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
                          child: SvgPicture.asset(
                            'assets/svg/unsaved_icon.svg',
                          ),
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
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis a oyilur imperdie',
                      style: Theme.of(context).textTheme.titleMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    const Divider(),
                    SizedBox(
                      height: 21.h,
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
          ),
        ],
      ),
    );
  }

  void filterJobs(BuildContext ctx) {
    showModalBottomSheet(
      constraints:
          BoxConstraints.tightForFinite(width: double.infinity, height: 800.h),
      context: ctx,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.r),
          topRight: Radius.circular(25.r),
        ),
      ),
      builder: (_) {
        return GestureDetector(
            onTap: () {},
            behavior: HitTestBehavior.opaque,
            child: const FilterJobsWidget());
      },
    );
  }
}
