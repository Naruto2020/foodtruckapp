import 'package:foodtruckapp/helper/appcolors.dart';
import 'package:foodtruckapp/helper/iconhelper.dart';
import './iconhelper.dart';
import './appcolors.dart';
import '../models/category.dart';

class Utils{
  static List<Category> getMockedCategories() {
    return [
      Category(
        color: AppColors.MEATS,
        name: "truck1",
        imgName: "truckF1",
        icon: IconFontHelper.meats,
        subCategories : []
      ),
      Category(
        color: AppColors.FRUITS,
        name: "truck2",
        imgName: "truckF2",
        icon: IconFontHelper.fruits,
        subCategories : []
      ),
      Category(
        color: AppColors.VEGS,
        name: "truck3",
        imgName: "truckF3",
        icon: IconFontHelper.vegs,
        subCategories : []
      ),
      Category(
        color: AppColors.SEEDS,
        name: "truck4",
        imgName: "truckF4",
        icon: IconFontHelper.seeds,
        subCategories : []
      ),

      Category(
        color: AppColors.SPICES,
        name: "truck5",
        imgName: "truckF5",
        icon: IconFontHelper.spices,
        subCategories : []
      ),
    ];
  }
}