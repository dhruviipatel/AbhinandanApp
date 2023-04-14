import 'package:flutter/material.dart';

import '../../colors.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int currentIndex = 0;
  List<String> images = [
    "assets/images/sliderimage.png",
    "assets/images/sliderimage.png",
    "assets/images/sliderimage.png",
    "assets/images/sliderimage.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Container(
              height: 159,
              width: 350,
              child: PageView.builder(
                onPageChanged: (index1) {
                  setState(() {
                    currentIndex = index1 % images.length;
                  });
                },
                itemCount: images.length,
                itemBuilder: (context, index1) {
                  return Image.asset(
                    images[index1],
                  );
                },
              )),
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var i = 0; i < images.length; i++)
              Padding(
                padding: const EdgeInsets.only(left: 7, bottom: 7),
                child: buildIndecator(currentIndex == i),
              )
          ],
        )
      ],
    );
  }

  Widget buildIndecator(bool isSelected) {
    return Container(
      height: 8,
      width: 8,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? MyColors.myOrrangeColor : Colors.grey),
    );
  }
}
