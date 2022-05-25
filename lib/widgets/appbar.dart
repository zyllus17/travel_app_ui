import 'package:travel_app_ui/constants/constants.dart';

class Appbar extends StatelessWidget {
  const Appbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Icon(AppMaterialIcons.sideMenu),
          Image.asset(AppImages.profile),
        ],
      ),
    );
  }
}
