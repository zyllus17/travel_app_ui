import 'package:flutter/material.dart';
import 'package:travel_app_ui/constants/colors.dart';
import 'package:travel_app_ui/constants/images.dart';
import 'package:travel_app_ui/constants/material_icons.dart';
import 'package:travel_app_ui/constants/text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app_ui/screens/home_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    int currentPage = 0;
    List<Map<String, String>> onboardingData = [
      {
        "title": AppText.hiking,
        "text": AppText.hikingDetails,
        "image": AppImages.orientationOne
      },
      {
        "title": AppText.mountain,
        "text": AppText.mountainDetails,
        "image": AppImages.orientationTwo
      },
      {
        "title": AppText.scenery,
        "text": AppText.sceneryDetails,
        "image": AppImages.orientationThree
      },
    ];
    return Scaffold(
      body: PageView.builder(
        onPageChanged: (value) => setState(() {
          currentPage == value;
        }),
        scrollDirection: Axis.vertical,
        itemCount: onboardingData.length,
        itemBuilder: (_, index) {
          return Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  onboardingData[index]["image"]!,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        AppText.trips,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        onboardingData[index]["title"]!,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 266.w,
                        child: Text(
                          onboardingData[index]["text"]!,
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        width: 100.w,
                        height: 56.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: AppColors.purple,
                        ),
                        child: IconButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()),
                          ),
                          icon: const Icon(AppMaterialIcons.downArrow),
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: List.generate(
                      onboardingData.length,
                      (indexDots) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 8.h),
                          width: 8,
                          height: index == indexDots ? 35.h : 8.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: index == indexDots
                                ? AppColors.purple
                                : AppColors.circleGrey,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
