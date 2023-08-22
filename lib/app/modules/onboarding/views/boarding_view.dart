import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../data/constans/colors.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController(viewportFraction: 1);
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: warnabg,
      body: Stack(
        children: [
          //content
          PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                isLastPage = index == 2;
              });
            },
            children: [
              const PageOnBoardingScreen(
                image: 'indikator.png',
                title: 'Belajarlah! Karena\npintar itu Hebat',
                subtitle:
                    'Hebat tidak dihasilkan dari kemudahan.\nMereka dibentuk melalui tantangan!',
              ),
              const PageOnBoardingScreen(
                image: 'materi.png',
                title: 'Belajar hari ini.\nSukses hari esok.',
                subtitle:
                    'Persiapkan hari ini sebaik-baiknya untuk\nmenghadapi hari esok yang baru.',
              ),
              const PageOnBoardingScreen(
                image: 'evaluasi.png',
                title: 'Ayo Belajar!\nPintar itu keren',
                subtitle:
                    'Jangan pernah berhenti belajar,\nkarena hidup tak berhenti mengajarkan.',
              ),
            ]
                .animate(delay: 200.ms)
                .move(duration: 400.ms)
                .fadeIn(duration: 300.ms),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const WormEffect(
                    dotHeight: 6,
                    dotWidth: 22,
                    spacing: 20,
                    dotColor: Colors.grey,
                    activeDotColor: warnat1,
                  ),
                  onDotClicked: (index) => controller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeIn,
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  height: 100,
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: isLastPage
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.offNamed('/homeview');
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 12.0,
                                  horizontal: 50.0,
                                ),
                                decoration: BoxDecoration(
                                  color: warna2,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: warnaboder),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 3,
                                      spreadRadius: 1,
                                      offset: Offset(1, 1),
                                    ),
                                  ],
                                ),
                                child: const Text(
                                  "Mulai",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: warna3,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //Melewati
                            InkWell(
                              onTap: () {
                                controller.animateToPage(3,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeOut);
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 12.0,
                                  horizontal: 20,
                                ),
                                decoration: BoxDecoration(
                                  color: warna3,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: warnaboder),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 3,
                                      spreadRadius: 1,
                                      offset: Offset(1, 1),
                                    ),
                                  ],
                                ),
                                child: const Text(
                                  "Melewati",
                                  style: TextStyle(
                                    color: warna2,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ),
                            //Lanjut
                            InkWell(
                              onTap: () {
                                controller.nextPage(
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 12.0,
                                  horizontal: 20,
                                ),
                                decoration: BoxDecoration(
                                  color: warna2,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: warnaboder),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 3,
                                      spreadRadius: 1,
                                      offset: Offset(1, 1),
                                    ),
                                  ],
                                ),
                                child: const Text(
                                  "Lanjut",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: warna3,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PageOnBoardingScreen extends StatelessWidget {
  const PageOnBoardingScreen({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //image
          Container(
            height: Get.height / 3,
            margin: const EdgeInsets.only(
                right: 30.0, left: 30, bottom: 20, top: 100),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: warnaboder),
              image: DecorationImage(
                  image: AssetImage("assets/images/$image"), fit: BoxFit.cover),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  offset: const Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
                const BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: warnat1,
              fontSize: 24,
              fontWeight: FontWeight.w900,
              height: 1.3,
            ),
          ),
          const SizedBox(height: 30),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: warnat2,
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
