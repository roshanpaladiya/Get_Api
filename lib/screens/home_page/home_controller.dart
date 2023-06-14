import 'package:api_demo/screens/home_page/home_api.dart';
import 'package:api_demo/screens/model/model_class.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  bool hello = false;
  List<Imagemodel>? imageList;

  @override
  void onInit() {
    getImageList();
    super.onInit();
  }

  Future<void> getImageList() async {
    hello = true;
    imageList = await HomeScreenApi.getData();
    imageList ??= [];
    hello = false;
    update(['update']);
  }
}
