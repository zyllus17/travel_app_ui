import 'package:travel_app_ui/constants/constants.dart';
import 'package:travel_app_ui/screens/screens.dart';
import 'package:travel_app_ui/widgets/widgets.dart';

class CustomTabButton extends StatelessWidget {
  const CustomTabButton({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: SizedBox(
        height: 264.h,
        width: double.maxFinite,
        child: TabBarView(
          controller: _tabController,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  ImageButton(
                    image: AppImages.himalaya,
                    onPress: () {
                      return Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailScreen(
                            locationImage: AppImages.himalaya,
                            location: AppText.himalaya,
                            locationPrice: AppText.himalayaPrice,
                            locationDetail: AppText.himachal,
                            descriptionDetails: AppText.himalayaDescription,
                          ),
                        ),
                      );
                    },
                  ),
                  ImageButton(
                    image: AppImages.denali,
                    onPress: () {
                      return Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailScreen(
                            locationImage: AppImages.denali,
                            location: AppText.denali,
                            locationPrice: AppText.denaliPrice,
                            locationDetail: AppText.alaska,
                            descriptionDetails: AppText.denaliDescription,
                          ),
                        ),
                      );
                    },
                  ),
                  ImageButton(
                    image: AppImages.lhotse,
                    onPress: () {
                      return Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailScreen(
                            locationImage: AppImages.lhotse,
                            location: AppText.lhotse,
                            locationPrice: AppText.lhotsePrice,
                            locationDetail: AppText.khumbu,
                            descriptionDetails: AppText.lhotseDescription,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                color: AppColors.starYellow,
                child: Center(
                  child: Text(
                    'You are not the only one looking for Inspiration :(',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                color: AppColors.purple,
                child: Center(
                  child: Text(
                    'Hurting my own feelings everyday by creating fake scenarios that will never happen',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
