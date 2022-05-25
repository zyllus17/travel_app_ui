import 'package:travel_app_ui/constants/constants.dart';

class ImageButton extends StatelessWidget {
  final String image;
  final Function()? onPress;

  const ImageButton({
    Key? key,
    required this.image,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(right: 30.w),
        width: 220.w,
        height: 264.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
