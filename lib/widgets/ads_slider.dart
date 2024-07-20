import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unikonnect/controllers/slider_controller.dart';
import 'package:unikonnect/widgets/image_in_slider.dart';

class AdsSlider extends StatelessWidget {
  const AdsSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SliderController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: const[
            ImageInSlider(imageUrl: 'assets/images/mentalhealth.jpeg',),
            ImageInSlider(imageUrl: 'assets/images/alx banner.jpeg',),
            ImageInSlider(imageUrl: 'assets/images/banner wit.png',),
          ],
        ),
        
        const SizedBox(height: 10,),
    
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for(int i = 0; i<3 ; i++)
                  Container(
                    width: 25,
                    height: 5,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: controller.carouselCurrentIndex.value == i ? Colors.deepOrange : Colors.grey, 
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                
              ],
            ),
          ),
        ),
      ],
    );
  }
}

