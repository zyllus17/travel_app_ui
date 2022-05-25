import 'package:travel_app_ui/constants/constants.dart';

class ExploreText extends StatelessWidget {
  const ExploreText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppText.exploreMore,
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(
            AppText.seeAll,
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
