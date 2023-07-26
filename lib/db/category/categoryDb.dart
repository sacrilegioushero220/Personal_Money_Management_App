import 'package:personal_money_management_app/screens/models/category/category_model.dart';

abstract class CategoryDbFunctions {
  List<CategoryModel> getAllCategories();
  Future<void> insertCategory(CategoryModel value);
}

class CategoryDB implements CategoryDbFunctions {
  @override
  List<CategoryModel> getAllCategories() {
    // TODO: implement getAllCategories
    throw UnimplementedError();
  }

  @override
  Future<void> insertCategory(CategoryModel value) {
    // TODO: implement insertCategory
    throw UnimplementedError();
  }
}
