import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuywork/components/c_elevated_button.dart';
import 'package:kuywork/config/constants.dart';

import '../../utils/routes.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('onboarding'),
      // ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
            
              children: [
               
              Theme.of(context).brightness == Brightness.light ? 
               SvgPicture.asset('assets/svg/app_logo_light.svg')
              :SvgPicture.asset('assets/svg/app_logo_dark.svg'),
                 SizedBox(
                  height: 50.h,
                ),
                 Align(
                  alignment: Alignment.centerRight,
                   child:              Theme.of(context).brightness == Brightness.light ? 
                    SvgPicture.asset('assets/svg/graph_light.svg',
                  
                   ) : SvgPicture.asset('assets/svg/graph_dark.svg',
                  
                   ),
                 ),
                 SizedBox(
                  height: 11.h,
                ),
                RPadding(
                  padding: REdgeInsets.symmetric(horizontal: 40.w),
                  child: Column(
                    children: [
                      RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Best way to find your ',
                            style:Theme.of(context).textTheme.headlineLarge
                          ),
                          TextSpan(
                            text: 'dream job.',
                            style: GoogleFonts.poppins(
                                color: accentColor,
                                fontSize: 28.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                            ),
                       SizedBox(
                  height: 20.h,
                ), 
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis a imperdiet tortor. Mauris sed nisl id odio',
                   style: Theme.of(context).textTheme.titleSmall
                ) ,

               
                    ],
                  ),
                ),
                 SizedBox(
                  height: 38.h,
                ) ,
                   RPadding(
                     padding: REdgeInsets.symmetric(horizontal: 20.w),
                     child: SizedBox(
                      width: double.infinity,
                      child: CElevatedButton(title: 'Get Started', onPressed: (){
                         Navigator.of(context).pushNamed(
                  RouteGenerator.navigationPage,
                );
                      })),
                   )
              ],
            ),
          ),
        ),
      ),
    );
  }
}