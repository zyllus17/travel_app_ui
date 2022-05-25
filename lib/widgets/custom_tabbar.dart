import 'package:travel_app_ui/constants/constants.dart';
import 'package:travel_app_ui/screens/screens.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppText.discover,
            style: Theme.of(context).textTheme.headline1,
          ),
          Container(
            color: AppColors.white,
            child: TabBar(
              padding: EdgeInsets.zero,
              labelPadding: EdgeInsets.only(right: 30.w),
              automaticIndicatorColorAdjustment: false,
              controller: _tabController,
              labelColor: AppColors.black,
              unselectedLabelColor: AppColors.lightGrey,
              isScrollable: true,
              indicator: CircleTabIndicator(
                color: AppColors.purple,
                radius: 4,
              ),
              tabs: const [
                Tab(text: AppText.places),
                Tab(text: AppText.inspiration),
                Tab(text: AppText.emotions),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
