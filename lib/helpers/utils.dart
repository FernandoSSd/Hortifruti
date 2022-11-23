import 'package:dev_series/helpers/appcolors.dart';
import 'package:dev_series/helpers/iconhelper.dart';
import 'package:dev_series/models/category.dart';

class Utils {
  static List<Category> getMockCategories() {
    return [
      Category(
          name: 'Carnes',
          icon: IconFontHelper.MEATS,
          color: AppColors.MEATS,
          imgName: 'cat1',
          subCategories: []),
      Category(
          name: 'Frutas',
          icon: IconFontHelper.FRUITS,
          color: AppColors.FRUITS,
          imgName: 'cat2',
          subCategories: []),
      Category(
          name: 'Vegetais',
          icon: IconFontHelper.VEGS,
          color: AppColors.VEGS,
          imgName: 'cat3',
          subCategories: []),
      Category(
          name: 'Sementes',
          icon: IconFontHelper.SEEDS,
          color: AppColors.SEEDS,
          imgName: 'cat4',
          subCategories: []),
      Category(
          name: 'Doces',
          icon: IconFontHelper.PASTRIES,
          color: AppColors.PASTRIES,
          imgName: 'cat5',
          subCategories: []),
      Category(
          name: 'Especiarias',
          icon: IconFontHelper.SPICES,
          color: AppColors.SPICES,
          imgName: 'cat6',
          subCategories: []),
    ];
  }
}
