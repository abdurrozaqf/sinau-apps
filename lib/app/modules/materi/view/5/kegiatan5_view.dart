import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../data/constans/colors.dart';

class Kegiatan5View extends StatefulWidget {
  const Kegiatan5View({super.key});

  @override
  State<Kegiatan5View> createState() => _Kegiatan5ViewState();
}

class _Kegiatan5ViewState extends State<Kegiatan5View> {
  final controller = PageController();
  bool isLastPage = false;
  bool isFirstPage = false;

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
          //backgorund
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
                      const Center(
                        child: Text(
                          "Memahami Keliling dan Luas\nBangun Datar Segitiga",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
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
                //Content
                Expanded(
                  child: PageView(
                    controller: controller,
                    onPageChanged: (index) {
                      setState(() {
                        isFirstPage = index == 0;
                        isLastPage = index == 3;
                      });
                    },
                    children: [
                      Container(
                        margin:
                            const EdgeInsets.only(right: 12, left: 12, top: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
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
                        child: const TextMateri(
                          mdFileName: 'slide1',
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(right: 12, left: 12, top: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
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
                        child: const TextMateri(
                          mdFileName: 'slide2',
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(right: 12, left: 12, top: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
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
                        child: const TextMateri(
                          mdFileName: 'slide3',
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(right: 12, left: 12, top: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
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
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Spacer(),
                              Container(
                                width: Get.width / 1.5,
                                height: Get.height / 5,
                                decoration: BoxDecoration(
                                  color: warna1,
                                  borderRadius: BorderRadius.circular(25),
                                  image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/materi.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              const Text(
                                "Wah, kamu sudah menyelesaikan materi Keliling dan Luas Segitiga!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: "Nunito",
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              const Text(
                                "Bagaimana dengan materinya? Pasti sudah paham dong. Untuk melengkapi belajar kamu, Yuk tonton video dengan menekan tombol di bawah ini!",
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12.0),
                                child: InkWell(
                                  onTap: () {
                                    Get.toNamed('/video5view');
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 56,
                                    decoration: BoxDecoration(
                                      color: warna2,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 3,
                                          spreadRadius: 1,
                                          offset: Offset(1, 1),
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                image: const DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/k5.png"),
                                                  fit: BoxFit.cover,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                            const Icon(
                                              Icons.play_circle_outline_rounded,
                                              color: Colors.black54,
                                              size: 35,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(width: 14),
                                        const Text(
                                          "Video: Memahami Keliling dan\nLuas Segitiga",
                                          style: TextStyle(
                                            color: warna3,
                                            letterSpacing: 0.5,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const Text.rich(
                                textAlign: TextAlign.center,
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          'Atau mau latihan soal?\nlangsung saja tekan ',
                                    ),
                                    TextSpan(
                                        text: 'Contah Soal ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        )),
                                    TextSpan(
                                      text: 'di bawah!',
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer()
                            ],
                          ),
                        ),
                      ),
                    ]
                        .animate(delay: 200.ms)
                        .move(duration: 400.ms)
                        .fadeIn(duration: 300.ms),
                  ),
                ),
                //Dot indikator
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 4,
                    effect: const WormEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      spacing: 20,
                      dotColor: Colors.grey,
                      activeDotColor: warna3,
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
                                  Get.offAndToNamed('/kerjakan5');
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
                                    "Contoh Soal?",
                                    style: TextStyle(
                                      color: warna3,
                                      fontSize: 18,
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.w800,
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
                                "Geser",
                                style: TextStyle(
                                  color: warna3,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: warna3,
                              )
                                  .animate(
                                    onPlay: (controller) => controller.repeat(),
                                  )
                                  .fadeIn()
                                  .slideX(end: 1, duration: 1300.ms)
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

class TextMateri extends StatelessWidget {
  const TextMateri({
    Key? key,
    required this.mdFileName,
  }) : super(key: key);

  final String mdFileName;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: rootBundle.loadString("assets/md/materi_5/$mdFileName.md"),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          return Padding(
            padding: const EdgeInsets.all(25),
            child: Markdown(
              data: snapshot.requireData,
              padding: const EdgeInsets.all(0),
              styleSheet: MarkdownStyleSheet(
                blockSpacing: 8,
                blockquoteDecoration: const BoxDecoration(color: Colors.white),
                blockquotePadding:
                    const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                // h3: TextStyle(color: warna1),
                p: const TextStyle(fontSize: 12, height: 1.6),
                listBullet: const TextStyle(fontSize: 12, height: 1.6),
                orderedListAlign: WrapAlignment.spaceBetween,
                textAlign: WrapAlignment.spaceBetween,
              ),
            ),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
