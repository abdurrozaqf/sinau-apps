import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:flip_card/flip_card.dart';

import '../../../../data/constans/colors.dart';
import '../../../../widgets/flip_card_view.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ContohKegiatan3View extends StatefulWidget {
  const ContohKegiatan3View({super.key});

  @override
  State<ContohKegiatan3View> createState() => _ContohKegiatan3ViewState();
}

class _ContohKegiatan3ViewState extends State<ContohKegiatan3View> {
  final controller = PageController(viewportFraction: 0.8);
  bool isLastPage = false;
  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Background
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/score_screen.png"),
                  fit: BoxFit.cover),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                //AppBar
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Stack(
                    children: [
                      //Back
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          width: 46,
                          height: 46,
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.circular(10),
                            // border: Border.all(color: Colors.white),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 3,
                                spreadRadius: 1,
                                offset: Offset(1, 1),
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.arrow_back_rounded,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      //Title
                      Container(
                        height: 46,
                        alignment: Alignment.center,
                        child: const Text(
                          "Flip Card",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 0.8,
                            shadows: [
                              Shadow(
                                offset: Offset(3.0, 3.0),
                                blurRadius: 3.0,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              Shadow(
                                offset: Offset(3.0, 3.0),
                                blurRadius: 8.0,
                                color: warna2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //Judul
                const Padding(
                  padding: EdgeInsets.only(bottom: 12.0),
                  child: Text(
                    "Memahami Keliling dan Luas\nBangun Datar Segiempat",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                //Content
                Expanded(
                  child: PageView(
                    controller: controller,
                    onPageChanged: (index) {
                      setState(() {
                        isLastPage = index == 3;
                      });
                    },
                    children: const [
                      FlipCard(
                        front: ContohSoalMateri(
                          mdFileName: 'materi_3/flip1',
                          number: '1/4',
                          sisi: 'Sisi Depan',
                          image: "sisidepan.png",
                        ),
                        back: ContohSoalMateri(
                          mdFileName: 'materi_3/flip2',
                          number: '1/4',
                          sisi: 'Sisi Belakang',
                          image: "sisibelakang.png",
                        ),
                      ),
                      FlipCard(
                        front: ContohSoalMateri(
                          mdFileName: 'materi_3/flip3',
                          number: '2/4',
                          sisi: 'Sisi Depan',
                          image: "sisidepan.png",
                        ),
                        back: ContohSoalMateri(
                          mdFileName: 'materi_3/flip4',
                          number: '2/4',
                          sisi: 'Sisi Belakang',
                          image: "sisibelakang.png",
                        ),
                      ),
                      FlipCard(
                        front: ContohSoalMateri(
                          mdFileName: 'materi_3/flip5',
                          number: '3/4',
                          sisi: 'Sisi Depan',
                          image: "sisidepan.png",
                        ),
                        back: ContohSoalMateri(
                          mdFileName: 'materi_3/flip6',
                          number: '3/4',
                          sisi: 'Sisi Belakang',
                          image: "sisibelakang.png",
                        ),
                      ),
                      FlipCard(
                        front: ContohSoalMateri(
                          mdFileName: 'materi_3/flip7',
                          number: '4/4',
                          sisi: 'Sisi Depan',
                          image: "sisidepan.png",
                        ),
                        back: ContohSoalMateri(
                          mdFileName: 'materi_3/flip8',
                          number: '4/4',
                          sisi: 'Sisi Belakang',
                          image: "sisibelakang.png",
                        ),
                      ),
                    ],
                  ),
                ),
                //Dot Indikator
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 4,
                    effect: const WormEffect(
                      dotHeight: 8,
                      dotWidth: 8,
                      spacing: 10,
                      dotColor: Colors.white30,
                      activeDotColor: Colors.white,
                    ),
                    onDotClicked: (index) => controller.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeIn,
                    ),
                  ),
                ),
                //Bootomsheet
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    child: isLastPage
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.offAndToNamed('/evaluasiview');
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 46,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  decoration: BoxDecoration(
                                    color: Colors.white38,
                                    borderRadius: BorderRadius.circular(10),
                                    // border: Border.all(color: Colors.white),
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
                                    "Mulai latihan soal!",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Tap untuk putar flipcard",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(width: 5),
                              const Icon(
                                Icons.touch_app_outlined,
                                color: warna3,
                              )
                                  .animate(
                                    onPlay: (controller) => controller.repeat(),
                                  )
                                  .fadeIn()
                                  .scale(
                                      begin: const Offset(1, 1),
                                      end: const Offset(0.5, 0.5),
                                      duration: 1000.ms)
                                  .fadeOut()
                            ],
                          ),
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

Widget customCard(String number, sisi, title) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      border: Border.all(color: warna3),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 3,
          spreadRadius: 1,
          offset: Offset(1, 1),
        ),
      ],
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              number,
              style: const TextStyle(
                letterSpacing: 5,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "$sisi",
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          color: warna1,
          height: 50,
          width: 50,
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}
