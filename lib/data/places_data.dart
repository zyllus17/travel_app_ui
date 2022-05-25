import 'package:travel_app_ui/constants/constants.dart';
import 'package:travel_app_ui/model/model.dart';

class AppDetailData {
  static List<DetailModel> getDetailData() => [
        DetailModel(
          locationImage: AppImages.himalaya,
          location: AppText.himalaya,
          locationPrice: AppText.himalayaPrice,
          locationDetail: AppText.himachal,
          descriptionDetails: AppText.himalayaDescription,
        ),
        DetailModel(
          locationImage: AppImages.denali,
          location: AppText.denali,
          locationPrice: AppText.denaliPrice,
          locationDetail: AppText.alaska,
          descriptionDetails: AppText.denaliDescription,
        ),
        DetailModel(
          locationImage: AppImages.lhotse,
          location: AppText.lhotse,
          locationPrice: AppText.lhotsePrice,
          locationDetail: AppText.khumbu,
          descriptionDetails: AppText.lhotseDescription,
        )
      ];
}
