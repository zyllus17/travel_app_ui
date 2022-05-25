import 'package:travel_app_ui/constants/constants.dart';
import 'package:travel_app_ui/data/data.dart';
import 'package:travel_app_ui/model/model.dart';
import 'package:travel_app_ui/widgets/widgets.dart';

class DetailScreen extends StatefulWidget {
  final String locationImage;
  final String location;
  final String locationPrice;
  final String locationDetail;
  final String descriptionDetails;
  const DetailScreen({
    Key? key,
    required this.locationImage,
    required this.location,
    required this.locationPrice,
    required this.locationDetail,
    required this.descriptionDetails,
  }) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int selectedIndex = -1;
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<DetailModel> getDetailDatas = AppDetailData.getDetailData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ImageBox(widget: widget),
            Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                  color: AppColors.white),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          widget.location,
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        Text(
                          widget.locationPrice,
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ],
                    ),
                    SizedBox(height: 25.h),
                    Row(
                      children: <Widget>[
                        const Icon(AppMaterialIcons.loaction),
                        SizedBox(width: 15.w),
                        Text(
                          widget.locationDetail,
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                            5,
                            (index) {
                              return Icon(
                                AppMaterialIcons.star,
                                color: index < 4
                                    ? AppColors.starYellow
                                    : AppColors.circleGrey,
                              );
                            },
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          AppText.fiveStar,
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Text(
                      AppText.people,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      AppText.peopleGroup,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    SizedBox(height: 20.h),
                    Wrap(
                      children: List.generate(
                        5,
                        (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Padding(
                              padding: EdgeInsets.only(right: 15.w),
                              child: AppButtons(
                                borderColor: Colors.transparent,
                                color: selectedIndex == index
                                    ? AppColors.white
                                    : AppColors.black,
                                backgroundColor: selectedIndex == index
                                    ? AppColors.purple
                                    : AppColors.circleGrey,
                                text: (index + 1).toString(),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      AppText.description,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      widget.descriptionDetails,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        AppButtons(
                          color: AppColors.black,
                          backgroundColor: Colors.white,
                          borderColor: AppColors.black,
                          isIcon: true,
                          icon: Icons.favorite_border,
                        ),
                        SizedBox(width: 50.w),
                        Container(
                          width: 250.w,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: AppColors.purple,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30.w, vertical: 15.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  AppText.bookTrip,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(color: AppColors.white),
                                ),
                                const Icon(
                                  AppMaterialIcons.forwardArrow,
                                  color: AppColors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
