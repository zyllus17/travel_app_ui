import 'package:travel_app_ui/constants/constants.dart';
import 'package:travel_app_ui/screens/screens.dart';

class ImageBox extends StatelessWidget {
  const ImageBox({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final DetailScreen widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(widget.locationImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 50.h,
            left: 30.w,
            child: IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                AppMaterialIcons.backArrow,
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
