import 'package:get/get.dart';

class SliderController extends GetxController {
  static SliderController get instance => Get.find();

  final carouselCurrentIndex = 0.obs;

  void updatePageIndicator(index){
    carouselCurrentIndex.value = index;
  }
}