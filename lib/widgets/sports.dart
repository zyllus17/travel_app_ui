import 'package:travel_app_ui/constants/constants.dart';

class Sports extends StatelessWidget {
  const Sports({
    Key? key,
    required this.images,
  }) : super(key: key);

  final Map<String, String> images;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SizedBox(
        height: 120.h,
        width: double.maxFinite,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (_, index) {
            return Padding(
              padding: EdgeInsets.only(right: 35.w),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 60.w,
                    height: 60.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      image: DecorationImage(
                        image: AssetImage(images.keys.elementAt(index)),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Text(
                    images.values.elementAt(index),
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
